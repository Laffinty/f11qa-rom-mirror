#!/usr/bin/env bash
# scripts/sync_from_upstream.sh
# Fetch each ROM from upstream sources, verify SHA-256,
# fall back to Wayback Machine as last-resort.
#
# Usage:
#   bash scripts/sync_from_upstream.sh          # fetch all declared ROMs
#   VERBOSE=0 bash scripts/sync_from_upstream.sh
#
# To add a ROM:
#   1. Vendor the file under the correct suite subdirectory
#   2. Add a "### <rel_path>" entry in LICENSES.md (license, upstream URL, etc.)
#   3. Append a `fetch_rom ...` line in main() below, in suite order
#
# Exit codes:
#   0 — all declared ROMs fetched and verified
#   1 — at least one fetch failed

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
FETCH_TMP="${REPO_ROOT}/.fetch_cache"
mkdir -p "$FETCH_TMP"

VERBOSE="${VERBOSE:-1}"

log() {
    [[ "$VERBOSE" -ge 1 ]] && echo "$@"
}

# download <url> <dst_path>
download() {
    local url="$1"
    local dst="$2"
    if command -v curl >/dev/null 2>&1; then
        curl -fsSL --retry 3 --retry-delay 2 --connect-timeout 15 -o "$dst" "$url"
    elif command -v wget >/dev/null 2>&1; then
        wget -q --tries=3 --timeout=20 -O "$dst" "$url"
    else
        echo "sync: neither curl nor wget available" >&2
        return 1
    fi
}

# fetch_rom <rel_path> <expected_sha256> <url1> [url2 ...]
# Tries each URL in order; on SHA mismatch, removes and tries next.
# After all URLs, falls back to Wayback Machine.
fetch_rom() {
    local rel_path="$1"
    local expected_sha="$2"
    shift 2
    local sources=("$@")

    local dst="${REPO_ROOT}/${rel_path}"
    mkdir -p "$(dirname "$dst")"

    for src in "${sources[@]}"; do
        log "  try:    $src"
        if download "$src" "$dst"; then
            local actual
            actual=$(sha256sum "$dst" | awk '{print $1}')
            if [[ "$actual" == "$expected_sha" ]]; then
                log "  OK:     $actual"
                return 0
            else
                log "  SHA mismatch ($actual) — removing"
                rm -f "$dst"
            fi
        else
            log "  download failed"
        fi
    done

    # Wayback Machine fallback (last resort)
    for src in "${sources[@]}"; do
        local wayback="https://web.archive.org/web/2024/${src}"
        log "  wayback: $wayback"
        if download "$wayback" "$dst"; then
            local actual
            actual=$(sha256sum "$dst" | awk '{print $1}')
            if [[ "$actual" == "$expected_sha" ]]; then
                log "  OK (wayback): $actual"
                return 0
            else
                log "  SHA mismatch (wayback) — removing"
                rm -f "$dst"
            fi
        fi
    done

    echo "sync FAIL: ${rel_path} — all sources exhausted" >&2
    return 1
}

# ---- ROM declarations ----
# Each call: fetch_rom "<rel_path>" "<expected_sha256>" "<url1>" [url2 ...]
# Sources are tried in order; Wayback is last-resort.
# Entries are appended here as ROMs are added to LICENSES.md.

main() {
    log "sync_from_upstream.sh: starting at $(date -u +%Y-%m-%dT%H:%M:%SZ)"

    # ------------------------------------------------------------------
    # blargg/  (Shay Green — public domain test ROMs)
    # ------------------------------------------------------------------
    # Examples (uncomment + fill in actual SHA-256 + URL when vendoring):
    #
    # fetch_rom "blargg/cpu/instr_v5_all.nes" \
    #     "REPLACE_WITH_ACTUAL_SHA256" \
    #     "https://github.com/christopherpow/nes-test-roms/raw/master/instr_test-v5/all_instrs.nes"

    # ------------------------------------------------------------------
    # nestest/  (kevtris — nestest.nes + nestest.log)
    # ------------------------------------------------------------------
    # fetch_rom "nestest/nestest.nes" "..." "https://www.qmtpro.com/~nes/nestest/nestest.nes"

    # ------------------------------------------------------------------
    # (further suites appended in suite order)
    # ------------------------------------------------------------------

    log "sync_from_upstream.sh: done"
}

main "$@"