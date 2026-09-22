#!/usr/bin/env bash
# scripts/verify_licenses.sh
# Verify LICENSES.md manifest:
#   1. Each entry's ROM path exists in the repo
#   2. License field is present and in the accepted set
#   3. Upstream URL is present and on a known public host
#
# Usage:
#   bash scripts/verify_licenses.sh
#
# Schema expected per ROM entry:
#   ### <suite>/<path>/<file>.{nes,bin,log}
#   - **License**: <value>
#   - **Upstream URL**: <https URL on a known public host>
#
# HTML comment blocks (<!-- ... -->) are skipped entirely.

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
LICENSES_FILE="${REPO_ROOT}/LICENSES.md"

# Accepted license set (per README §License compatibility)
ACCEPTED_LICENSES="PD CC0 zlib GPL-2.0 GPL-2.0-only GPL-2.0-or-later GPL-3.0 GPL-3.0-only GPL-3.0-or-later MIT BSD Apache-2.0 ISC Unlicense All-Permissive"

# ROM file suffixes that count as vendored artifacts.
# .nes  = standard iNES / NES 2.0 ROM
# .fds  = Famicom Disk System disk image (FDS BIOS 加载的合法镜像格式)
# .bin  = raw PRG/CHR chunks (auxiliary build artifacts, audited as vendored ROMs)
# .log  = reference execution logs (e.g. nestest.log — vendored as ROM metadata)
ROM_SUFFIX_REGEX='\.(nes|fds|bin|log)$'

# Known public hosts (allow-list; deny private / intranet URLs)
PUBLIC_HOST_REGEX='^https?://(github\.com|raw\.githubusercontent\.com|gist\.githubusercontent\.com|iki\.fi|[a-z0-9.-]+\.iki\.fi|qmtpro\.com|bisqwit\.iki\.fi|nesdev\.org|forums\.nesdev\.org|web\.archive\.org|archive\.org)/'

if [[ ! -f "$LICENSES_FILE" ]]; then
    echo "verify_licenses: missing LICENSES.md at repo root" >&2
    exit 1
fi

entries=0
errors=0
current_path=""
current_license=""
current_url=""
current_notes=""
in_comment=0

flush_entry() {
    if [[ -z "$current_path" ]]; then
        return
    fi
    entries=$((entries + 1))

    # 1. ROM path exists
    if [[ ! -f "${REPO_ROOT}/${current_path}" ]]; then
        echo "LICENSES: missing ROM file at ${current_path}" >&2
        errors=$((errors + 1))
    fi

    # 2. License field present and in accepted set
    if [[ -z "$current_license" ]]; then
        echo "LICENSES: ${current_path} missing License field" >&2
        errors=$((errors + 1))
    else
        ok=0
        for L in $ACCEPTED_LICENSES; do
            if [[ "$current_license" == "$L" ]]; then
                ok=1
                break
            fi
        done
        if [[ $ok -eq 0 ]]; then
            echo "LICENSES: ${current_path} license '${current_license}' not in accepted set" >&2
            echo "  accepted: ${ACCEPTED_LICENSES}" >&2
            errors=$((errors + 1))
        fi
    fi

    # 3. Upstream URL present and on a known public host
    if [[ -z "$current_url" ]]; then
        echo "LICENSES: ${current_path} missing Upstream URL" >&2
        errors=$((errors + 1))
    elif ! echo "$current_url" | grep -qE "$PUBLIC_HOST_REGEX"; then
        echo "LICENSES: ${current_path} upstream URL '${current_url}' not on a known public host" >&2
        errors=$((errors + 1))
    fi

    # 4. Notes field non-empty — required for documenting license basis.
    #    Especially important for PD entries where the basis (explicit upstream
    #    declaration vs. community consensus + third-party PD-tagged archive)
    #    must be transparent.
    if [[ -z "$current_notes" ]]; then
        echo "LICENSES: ${current_path} missing Notes field (license basis)" >&2
        errors=$((errors + 1))
    fi

    current_path=""
    current_license=""
    current_url=""
    current_notes=""
}

while IFS= read -r line || [[ -n "$line" ]]; do
    # Strip trailing CR (Windows CRLF safety)
    line="${line%$'\r'}"

    # Track HTML comment state
    if [[ "$line" == *"<!--"* ]]; then
        in_comment=1
    fi
    if [[ $in_comment -eq 1 ]]; then
        if [[ "$line" == *"-->"* ]]; then
            in_comment=0
        fi
        continue
    fi

    [[ -z "$line" ]] && continue

    # New entry header: "### <path>" — but only if path ends in a ROM suffix
    if [[ "$line" =~ ^###[[:space:]]+(.+)$ ]]; then
        candidate="${BASH_REMATCH[1]}"
        if [[ "$candidate" =~ $ROM_SUFFIX_REGEX ]]; then
            flush_entry
            current_path="$candidate"
        fi
        # Otherwise it's a section heading, ignore
        continue
    fi

    # Field: "- **License**: <value>"
    if [[ "$line" =~ ^-\ \*\*License\*\*:[[:space:]]+(.+)$ ]]; then
        current_license="${BASH_REMATCH[1]}"
        continue
    fi

    # Field: "- **Upstream URL**: <value>"
    if [[ "$line" =~ ^-\ \*\*Upstream\ URL\*\*:[[:space:]]+(.+)$ ]]; then
        current_url="${BASH_REMATCH[1]}"
        continue
    fi

    # Field: "- **Notes**: <value>"  (REQUIRED — license basis)
    if [[ "$line" =~ ^-\ \*\*Notes\*\*:[[:space:]]+(.+)$ ]]; then
        current_notes="${BASH_REMATCH[1]}"
        continue
    fi
done < "$LICENSES_FILE"

# Flush last entry
flush_entry

echo "verify_licenses: $entries entries checked, $errors errors"
[[ $errors -eq 0 ]]