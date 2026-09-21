#!/usr/bin/env bash
# scripts/audit_sha256.sh
# Audit every ROM file against SHA256SUMS.txt at the repo root.
# Exit 0 if all match, exit 1 on any mismatch or missing file.
#
# Usage:
#   bash scripts/audit_sha256.sh
#
# Behavior:
#   - Parses SHA256SUMS.txt, ignoring comment / blank lines
#   - For each "<sha256>  <rel_path>" line, verifies the file exists
#     and that sha256sum(<rel_path>) equals the recorded hash
#   - Prints a summary to stdout, errors to stderr
#
# Exit codes:
#   0 — all entries verified
#   1 — at least one mismatch / missing file / parse error

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SUMS_FILE="${REPO_ROOT}/SHA256SUMS.txt"

if [[ ! -f "$SUMS_FILE" ]]; then
    echo "audit_sha256: missing SHA256SUMS.txt at repo root" >&2
    exit 1
fi

checked=0
failed=0
missing=0

while IFS= read -r line || [[ -n "$line" ]]; do
    # Strip trailing CR (Windows CRLF safety)
    line="${line%$'\r'}"

    # Skip blank / comment lines
    [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue

    expected_sha=$(echo "$line" | awk '{print tolower($1)}')
    rel_path=$(echo "$line" | awk '{print $2}')

    if [[ -z "$expected_sha" || -z "$rel_path" ]]; then
        echo "audit_sha256: malformed line: $line" >&2
        failed=$((failed + 1))
        continue
    fi

    abs_path="${REPO_ROOT}/${rel_path}"

    if [[ ! -f "$abs_path" ]]; then
        echo "MISSING: $rel_path" >&2
        missing=$((missing + 1))
        continue
    fi

    actual_sha=$(sha256sum "$abs_path" | awk '{print tolower($1)}')
    if [[ "$actual_sha" != "$expected_sha" ]]; then
        echo "MISMATCH: $rel_path" >&2
        echo "  expected: $expected_sha" >&2
        echo "  actual:   $actual_sha" >&2
        failed=$((failed + 1))
    else
        checked=$((checked + 1))
    fi
done < "$SUMS_FILE"

echo "audit_sha256: $checked passed, $failed mismatched, $missing missing"
[[ $failed -eq 0 && $missing -eq 0 ]]