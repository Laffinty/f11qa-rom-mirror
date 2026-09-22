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
#   0 鈥?all declared ROMs fetched and verified
#   1 鈥?at least one fetch failed

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
                log "  SHA mismatch ($actual) 鈥?removing"
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
                log "  SHA mismatch (wayback) 鈥?removing"
                rm -f "$dst"
            fi
        fi
    done

    echo "sync FAIL: ${rel_path} 鈥?all sources exhausted" >&2
    return 1
}

# ---- ROM declarations ----
# Each call: fetch_rom "<rel_path>" "<expected_sha256>" "<url1>" [url2 ...]
# Sources are tried in order; Wayback is last-resort.
# Entries are appended here as ROMs are added to LICENSES.md.

main() {
    log "sync_from_upstream.sh: starting at $(date -u +%Y-%m-%dT%H:%M:%SZ)"

    # ------------------------------------------------------------------
    # ROM declarations -- AUTO-GENERATED from LICENSES.md + SHA256SUMS.txt
    # Regenerate via:
    #   bash scripts/sync_from_upstream.sh    # (no-op for missing files)
    #   powershell -NoProfile -ExecutionPolicy Bypass -File scripts/_parse_licenses.ps1 
    #     | powershell -NoProfile -ExecutionPolicy Bypass -File .fetch_cache/_gen_fetch_block.ps1
    #
    # Sources are tried in order; Wayback is last-resort.
    # Entries are appended automatically as new ROMs are added to LICENSES.md.
    # ------------------------------------------------------------------

    # ------------------------------------------------------------------
    # bisqwit/
    # ------------------------------------------------------------------
    fetch_rom "bisqwit/cpu_dummy_writes_oam.nes" \
        "7c1d71a38b2e873d0874add8b823ff39b99151bb29f50096d8021787020c566c" \
        "https://bisqwit.iki.fi/src/nes_tests/cpu_dummy_writes.zip"
    fetch_rom "bisqwit/cpu_dummy_writes_ppumem.nes" \
        "f59ac329f4872277ccbeff9dd595b901d861af8d53e8a43dcca93bb86752a6b3" \
        "https://bisqwit.iki.fi/src/nes_tests/cpu_dummy_writes.zip"
    fetch_rom "bisqwit/test_cpu_exec_space_apu.nes" \
        "4d37356385388d7731b585ef2c990c711eb58fe8e9d30d28769ea65f3a0fc712" \
        "https://bisqwit.iki.fi/src/nes_tests/cpu_exec_space.zip"
    fetch_rom "bisqwit/test_cpu_exec_space_ppuio.nes" \
        "1e54531037abbcc0c85f03d840800bf4494f2b5d78bd4a1bb40e4ae94ec9acf0" \
        "https://bisqwit.iki.fi/src/nes_tests/cpu_exec_space.zip"
    fetch_rom "bisqwit/test_ppu_read_buffer.nes" \
        "230a52fc557c098eba163801d1b6bbf9f57fe8c5ff79a3f968c804dedb1290ba" \
        "https://bisqwit.iki.fi/src/nes_tests/ppu_read_buffer.zip"

    # ------------------------------------------------------------------
    # blargg/
    # ------------------------------------------------------------------
    fetch_rom "blargg/cpu/blargg_nes_cpu_test5_cpu.nes" \
        "782b97d45ade98f642893341277bf161d6ff0f973fd0de0de3753d844e931940" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_nes_cpu_test5/cpu.nes"
    fetch_rom "blargg/cpu/blargg_nes_cpu_test5_official.nes" \
        "5b412b3940abe3f9ed562b86b93cf660688bee95eba927c4dacd53c9da89fe9a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_nes_cpu_test5/official.nes"
    fetch_rom "blargg/cpu/branch_timing_1.Branch_Basics.nes" \
        "7b69e3044eaeb86317147a900d1f4a467b666f59d375ec1ba6658233f23786cd" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/branch_timing_tests/1.Branch_Basics.nes"
    fetch_rom "blargg/cpu/branch_timing_2.Backward_Branch.nes" \
        "f7966e9b86b04b4adb987439a442e926e9cfe6bb71436dd5dd56f41f9eb029a4" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/branch_timing_tests/2.Backward_Branch.nes"
    fetch_rom "blargg/cpu/branch_timing_3.Forward_Branch.nes" \
        "d0fbc6b1899bc948172c45f37a981eb0dade212d7e807cc56efedae93d6f9c9b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/branch_timing_tests/3.Forward_Branch.nes"
    fetch_rom "blargg/cpu/cpu_dummy_reads_cpu_dummy_reads.nes" \
        "db4f91b80c5fbc123e7dcb420fb7fea9b8a18613edf4de7f3d1e3ed95e3117c9" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_dummy_reads/cpu_dummy_reads.nes"
    fetch_rom "blargg/cpu/cpu_interrupts_v2.nes" \
        "ccbac4e824eb96ecfe8b82d331a083be186eb6776aa57e25c52251eaf7df9c4f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/cpu_interrupts.nes"
    fetch_rom "blargg/cpu/cpu_interrupts_v2_1-cli_latency.nes" \
        "e402d36118f77dcbbe8ddca90c15fc76a46bcb30b25cb028c383e4a621de5fc0" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/1-cli_latency.nes"
    fetch_rom "blargg/cpu/cpu_interrupts_v2_2-nmi_and_brk.nes" \
        "6e6bf6205930afcfebdc213c583df53986a688a8b36f8856b805ef4c1853e6eb" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/2-nmi_and_brk.nes"
    fetch_rom "blargg/cpu/cpu_interrupts_v2_3-nmi_and_irq.nes" \
        "3008a9524d174a8aca562ff0361eba81da53e38cf1ebb5125322fe151f14d945" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/3-nmi_and_irq.nes"
    fetch_rom "blargg/cpu/cpu_interrupts_v2_4-irq_and_dma.nes" \
        "6d7b4c1947ada64679af56cf0c227286b2408afe1747dfaa4dc7363d57ff87f6" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/4-irq_and_dma.nes"
    fetch_rom "blargg/cpu/cpu_interrupts_v2_5-branch_delays_irq.nes" \
        "f9e10b4a24d8f3cd3e51fb7457c72858aab96a6467fdbbd806d0661c2d32fdc7" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/5-branch_delays_irq.nes"
    fetch_rom "blargg/cpu/cpu_reset_ram_after_reset.nes" \
        "f1802a5618aaaa0c4d592caa45b0b13c54082af93fc311bda0c27bceacbc7c7f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_reset/ram_after_reset.nes"
    fetch_rom "blargg/cpu/cpu_reset_registers.nes" \
        "a30f33fb6c9f56012fba38dc85ddc3dccc06bfc0b25fef7711b63f8207279715" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_reset/registers.nes"
    fetch_rom "blargg/cpu/cpu_timing_test6.nes" \
        "6ab4fe8af23b12ca0dfccfc030de3d4069bf2498e3ef20ddcf1ca75555065b85" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_timing_test6/cpu_timing_test.nes"
    fetch_rom "blargg/cpu/instr_misc.nes" \
        "b6762e20a285216304dfd2b5e1f192459354b23a5e48b2f5f9fb7cb0dac51243" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/instr_misc.nes"
    fetch_rom "blargg/cpu/instr_misc_01-abs_x_wrap.nes" \
        "892e892b3b5d3526913b5491252f628d987baf44509dd28a7d109efc8a16bacc" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/01-abs_x_wrap.nes"
    fetch_rom "blargg/cpu/instr_misc_02-branch_wrap.nes" \
        "2e535f572a16ab0e27bf6e076de6aaa2a9885c9ae1b02acda7853810529b24c5" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/02-branch_wrap.nes"
    fetch_rom "blargg/cpu/instr_misc_03-dummy_reads.nes" \
        "9210b8a274c060e0abf9cf7a9f4a140598a8fa01ce852b0a9aef500c9728e822" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/03-dummy_reads.nes"
    fetch_rom "blargg/cpu/instr_misc_04-dummy_reads_apu.nes" \
        "3e4e974a57b82247861576bc855b589fa6d00291ec159f79795c9e3f50c39fef" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/04-dummy_reads_apu.nes"
    fetch_rom "blargg/cpu/instr_test_v3_01-implied.nes" \
        "3093a51eb7f5c7c6af138ab74486e79df2488e6a0814e67e415ae67e1975a367" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/01-implied.nes"
    fetch_rom "blargg/cpu/instr_test_v3_02-immediate.nes" \
        "5ce057d05b17f7a1548cbb13c80a22a9e9ed46e715f228110fb3c169f98210c8" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/02-immediate.nes"
    fetch_rom "blargg/cpu/instr_test_v3_03-zero_page.nes" \
        "cf6b1f841b593a58e80d607dee25d2826cb2a26e39ff4eb082f21cde7946f96e" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/03-zero_page.nes"
    fetch_rom "blargg/cpu/instr_test_v3_04-zp_xy.nes" \
        "248fc480302c9d97aaff693e50fc6658eb3dfc38e17374b91a6b47fcd84d784a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/04-zp_xy.nes"
    fetch_rom "blargg/cpu/instr_test_v3_05-absolute.nes" \
        "eb396171be156bdb82caa1f447d883fac95f6e037d25b28c6c1970469caf981b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/05-absolute.nes"
    fetch_rom "blargg/cpu/instr_test_v3_06-abs_xy.nes" \
        "9267bde58135ac34b959b0b299f4ac7a65a66813edce2266d9d5532b162afa3f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/06-abs_xy.nes"
    fetch_rom "blargg/cpu/instr_test_v3_07-ind_x.nes" \
        "9640c36982ad8021a69725926adb410370ac630738d2cfce37f9c143d6ee4c19" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/07-ind_x.nes"
    fetch_rom "blargg/cpu/instr_test_v3_08-ind_y.nes" \
        "2154f645e4d58defef3e7023b7456a8d367b381f192a32fcc6a1d7e36c39546e" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/08-ind_y.nes"
    fetch_rom "blargg/cpu/instr_test_v3_09-branches.nes" \
        "1ac05f2864cb72824269e3352d2591ad9cadab8d294bbc883a5ba1c29bd6c1d0" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/09-branches.nes"
    fetch_rom "blargg/cpu/instr_test_v3_10-stack.nes" \
        "16c523a892125d3e496c976c1b5ce239b01a630316c57d47999f11d6dd831883" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/10-stack.nes"
    fetch_rom "blargg/cpu/instr_test_v3_11-jmp_jsr.nes" \
        "903e341e4e460f8e4633e6bd1d169a865d34008d533fa2561319d88f24d38171" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/11-jmp_jsr.nes"
    fetch_rom "blargg/cpu/instr_test_v3_12-rts.nes" \
        "e6e08c5169adf685188ddef5f36a5b433c628ab2e818a329f9537e3de3fffb69" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/12-rts.nes"
    fetch_rom "blargg/cpu/instr_test_v3_13-rti.nes" \
        "5a834bae00aede3ee9e066338207ca4cbf5d91131fe069f1bf498b8be757dd0e" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/13-rti.nes"
    fetch_rom "blargg/cpu/instr_test_v3_14-brk.nes" \
        "f803978b90094bda7e7e7194ae7dcb814167733c0baa1e35a6985ee23f650c66" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/14-brk.nes"
    fetch_rom "blargg/cpu/instr_test_v3_15-special.nes" \
        "7b2f490c2fadf0e2ff6e1582c857e6a75e7c90405fce2b7131d74f9ab73de45d" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/15-special.nes"
    fetch_rom "blargg/cpu/instr_test_v3_all_instrs.nes" \
        "0c276c84b578ac43b7bce7f611c29a4d77e8d06b2336b362ae4024a67fefbe02" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/all_instrs.nes"
    fetch_rom "blargg/cpu/instr_test_v3_official_only.nes" \
        "5f331a713ff60c496e9d0173332dd37365080c62158ffc71ba2d9f8bbdc62c99" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/official_only.nes"
    fetch_rom "blargg/cpu/instr_test_v5_01-basics.nes" \
        "4dd1cdd406bc3f747972e7da314ce8ca89321eb7a836c1ced569ee54ae44a384" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/01-basics.nes"
    fetch_rom "blargg/cpu/instr_test_v5_02-implied.nes" \
        "1c4d4fa130cf6feebc072543a5cd3627ae71063b56b08642bf43e9a6c6f44996" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/02-implied.nes"
    fetch_rom "blargg/cpu/instr_test_v5_03-immediate.nes" \
        "6f7ad8ff31c762c37deaee0f323df03eb94025cf1f3b0343ebe6fe567da0e943" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/03-immediate.nes"
    fetch_rom "blargg/cpu/instr_test_v5_04-zero_page.nes" \
        "7a8feada4bb4460250c8f05401e5d728878bbe71956756d0b11d488e57eb12fd" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/04-zero_page.nes"
    fetch_rom "blargg/cpu/instr_test_v5_05-zp_xy.nes" \
        "767f422dc4e651e331456b207f7c6d60d19329fde0c0827e83591dbd91ae5e23" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/05-zp_xy.nes"
    fetch_rom "blargg/cpu/instr_test_v5_06-absolute.nes" \
        "98df36dc4fcc4f37d9eb0539c71283020776b1e5dc6a6ce58671739a8d6534af" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/06-absolute.nes"
    fetch_rom "blargg/cpu/instr_test_v5_07-abs_xy.nes" \
        "9ff58d77d8d384cc918fcd3ed877898c5e7330cd475ed2dafb11cbe80ff32eff" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/07-abs_xy.nes"
    fetch_rom "blargg/cpu/instr_test_v5_08-ind_x.nes" \
        "2ec6f5d4a8caee5d8295cebe563f203c26ea9bc05f1dbc967feb88f5dc4f261f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/08-ind_x.nes"
    fetch_rom "blargg/cpu/instr_test_v5_09-ind_y.nes" \
        "0fbc8b228d5daa83a4a083bf87ae3a61b5247ebdd91a6b91c8cf8c42784804ac" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/09-ind_y.nes"
    fetch_rom "blargg/cpu/instr_test_v5_10-branches.nes" \
        "63ab768e88931db6f7dfcfafe43d5e29ebc3dcb80da8fc7fcda8c930f34aef54" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/10-branches.nes"
    fetch_rom "blargg/cpu/instr_test_v5_11-stack.nes" \
        "c534191fe3ea4c8940944fda98dd58eb42710268d453f97e8e2c4ae7f15f9cdb" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/11-stack.nes"
    fetch_rom "blargg/cpu/instr_test_v5_12-jmp_jsr.nes" \
        "f5b4652690fc04e6b573a2b3b54a29407ad0615d3c264e7cb618b6694b50de55" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/12-jmp_jsr.nes"
    fetch_rom "blargg/cpu/instr_test_v5_13-rts.nes" \
        "b711d25bc55585c252046a1304a0bc64c13cacce7c96a1bac5c8e91f9fc2597f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/13-rts.nes"
    fetch_rom "blargg/cpu/instr_test_v5_14-rti.nes" \
        "f084b00605be1840946b53935032581e68abe1bb24479942751cfe46ddfcb280" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/14-rti.nes"
    fetch_rom "blargg/cpu/instr_test_v5_15-brk.nes" \
        "da7ae9a191c4483b540771e15b1f6f18df68f1d1ecd717b59ea8b1ee3596ec3e" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/15-brk.nes"
    fetch_rom "blargg/cpu/instr_test_v5_16-special.nes" \
        "7d03410b61784e49920901e84b00a4f31a19078391f20005c6fac9036d2190f7" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/16-special.nes"
    fetch_rom "blargg/cpu/instr_test_v5_all.nes" \
        "353870c157242e3d428ef7387109deaee0d2e158bdb432ab9aae4e657072c785" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/all_instrs.nes"
    fetch_rom "blargg/cpu/instr_test_v5_official.nes" \
        "589b8835deb5cbc69618dac193a3dbd675540f7f2794e2d2a92e97beb8abc3cb" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/official_only.nes"
    fetch_rom "blargg/cpu/instr_timing_1-instr_timing.nes" \
        "e260068839fe3d0402376e97e4ee15f5790ee77c701fd0700bba057527910222" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_timing/rom_singles/1-instr_timing.nes"
    fetch_rom "blargg/cpu/instr_timing_2-branch_timing.nes" \
        "0afaa393f375844ab98834c1ecba7fa6d8c44880c8b6e738936d0f04a84c8538" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_timing/rom_singles/2-branch_timing.nes"
    fetch_rom "blargg/cpu/instr_timing_instr_timing.nes" \
        "3d1bca14266f1e25b75a34ddd29c9df1ce9c6d990c8663a218f72e7861660fb0" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_timing/instr_timing.nes"
    fetch_rom "blargg/cpu/nes_instr_test_01-implied.nes" \
        "7b2c08954fc82a0cd1796b02ec79afed598d951356921a3a09b47906781ce5f2" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/01-implied.nes"
    fetch_rom "blargg/cpu/nes_instr_test_02-immediate.nes" \
        "514f9114a1fe95c2baa086a84a962ae83947997517003da849e336838e841399" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/02-immediate.nes"
    fetch_rom "blargg/cpu/nes_instr_test_03-zero_page.nes" \
        "1454d1b3b6ba0d3781b9136ba70173590388216790dcbe6f234f6b5507ebfbaf" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/03-zero_page.nes"
    fetch_rom "blargg/cpu/nes_instr_test_04-zp_xy.nes" \
        "e36cba0e33f8b659b7e07911b1e411c5ca8070e7149560ae64e6614e3d5d004a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/04-zp_xy.nes"
    fetch_rom "blargg/cpu/nes_instr_test_05-absolute.nes" \
        "d72284f5e2a0b495f50a6207b424bd59b5a1d7bc651ac48a04c761e85442dfb0" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/05-absolute.nes"
    fetch_rom "blargg/cpu/nes_instr_test_06-abs_xy.nes" \
        "f02d67978b30a693e9d6ebd8a31b9f5dbdf92c180366458e18197024a1e9c108" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/06-abs_xy.nes"
    fetch_rom "blargg/cpu/nes_instr_test_07-ind_x.nes" \
        "1b1d89c04ccd7fa938315c6e98dc35d7b943514ed97f501ea6aa1b8091d99597" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/07-ind_x.nes"
    fetch_rom "blargg/cpu/nes_instr_test_08-ind_y.nes" \
        "6e458dbb0f78dd5adcdef20a92a911e58804554478994432fc83e70616296a61" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/08-ind_y.nes"
    fetch_rom "blargg/cpu/nes_instr_test_09-branches.nes" \
        "6d675caa8f29a9c695f616b82b6c7cb968fc7e2ca6282035e7255fe42085c8ff" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/09-branches.nes"
    fetch_rom "blargg/cpu/nes_instr_test_10-stack.nes" \
        "799160a3c982702638b41f5a115bc4286a036ac3f233184dd302aefe1afea6b5" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/10-stack.nes"
    fetch_rom "blargg/cpu/nes_instr_test_11-special.nes" \
        "1abc8c2164ff09fbaf11e3e302f5783ddef6dea037ba65694fdfd8c5fc8a9966" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/11-special.nes"

    # ------------------------------------------------------------------
    # blargg/ppu/  (Shay Green -- PPU VBL/NMI tests)
    # ------------------------------------------------------------------
    fetch_rom "blargg/ppu/ppu_vbl_nmi.nes" \
        "8dbab1be785585c399cf055ef02147b788ab75fd80e81cf9568a2feafc03fb7d" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/ppu_vbl_nmi.nes"
    fetch_rom "blargg/ppu/01-vbl_basics.nes" \
        "06aea5af4edab4e3141c939cd5ac9936f8758203b25dcaf84ae1a09db49e024a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/01-vbl_basics.nes"
    fetch_rom "blargg/ppu/02-vbl_set_time.nes" \
        "dd98856130078844e3aa4bd95a9be8ab501ea84c089f1d8ad49a1b20af4b3a80" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/02-vbl_set_time.nes"
    fetch_rom "blargg/ppu/03-vbl_clear_time.nes" \
        "787fdaa4dd6c5b6df5f4308fb6d55b57e2c2f69bd5ecdf8ad5c69735db4fcc72" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/03-vbl_clear_time.nes"
    fetch_rom "blargg/ppu/04-nmi_control.nes" \
        "84722c75b896c47c8642f83220230fe14f0a31e55e26ecb83c400e6a26d91b32" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/04-nmi_control.nes"
    fetch_rom "blargg/ppu/05-nmi_timing.nes" \
        "72e515d689d7404ae5779b8c9c4c7b3563a755a94bd44864516f1b03df044482" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/05-nmi_timing.nes"
    fetch_rom "blargg/ppu/06-suppression.nes" \
        "811dd5997bbf48c2e5687ab06845f17ea76b2be472786596c334137582cc72aa" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/06-suppression.nes"
    fetch_rom "blargg/ppu/07-nmi_on_timing.nes" \
        "1ed154363660b5775b112ae63ce9bb4e400ebde2afef4d0ac12fc433efda3702" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/07-nmi_on_timing.nes"
    fetch_rom "blargg/ppu/08-nmi_off_timing.nes" \
        "1d2a4093091c8e58a7f99d6a3531bbc6346b52cfc59bcb17ca04c1f2376cf2fc" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/08-nmi_off_timing.nes"
    fetch_rom "blargg/ppu/09-even_odd_frames.nes" \
        "1ac04283021ddd9294cc74ee709c55e20a350dc4815c15a8a93b3654837e858d" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/09-even_odd_frames.nes"
    fetch_rom "blargg/ppu/10-even_odd_timing.nes" \
        "7217d2d172ce11ad45c4da40c2f22201cf0eb758bc2cd8dd39d2cf0a7d4ca83e" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/10-even_odd_timing.nes"
    fetch_rom "blargg/ppu/oam_stress.nes" \
        "95882d72a7acabe928fd277e3b3e0372f21ef3d41e36d7d8fb17fc017a356f70" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/oam_stress/oam_stress.nes"
    fetch_rom "blargg/ppu/ppu_open_bus.nes" \
        "d4208a3ff6340532dd0fced7f9d408d5b6585853a0ddc9c1f64ee1722ef08e67" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_open_bus/ppu_open_bus.nes"
    fetch_rom "blargg/ppu/sprite_overflow_1.Basics.nes" \
        "1a6782f63ccb3a3dd1aa6a24272036c9c3aa232c2d1ff0b21e872741a3ee4fe2" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/1.Basics.nes"
    fetch_rom "blargg/ppu/sprite_overflow_2.Details.nes" \
        "6405a7ff1042fe7a50d9bfe521e43460a3251799425bd3e1863b29b67e7cd587" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/2.Details.nes"
    fetch_rom "blargg/ppu/sprite_overflow_3.Timing.nes" \
        "2252ec8fc35932b408f409ef9b6863edf084aa871fc10ad180b0ac4c2468ef8c" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/3.Timing.nes"
    fetch_rom "blargg/ppu/sprite_overflow_4.Obscure.nes" \
        "aebf2199344321465ae0d8dcd81f6c528c7f661f31f1814711365b4e573a8263" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/4.Obscure.nes"
    fetch_rom "blargg/ppu/sprite_overflow_5.Emulator.nes" \
        "cf994454219696de82794f0b84f2bd63458444d12a1171c85bba8697ab94acb4" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/5.Emulator.nes"
    fetch_rom "blargg/ppu/sprite_hit_01.basics.nes" \
        "51819e8e502bd88fe3b7244198a074dbeef2e848f66c587be04b04f1f0d4bb52" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/01.basics.nes"
    fetch_rom "blargg/ppu/sprite_hit_02.alignment.nes" \
        "125bbb3ce1e67370f1f4559c2ad3221e52a3e98880b9789400292b5f3a8b39e6" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/02.alignment.nes"
    fetch_rom "blargg/ppu/sprite_hit_03.corners.nes" \
        "9dd57776bc6267fe6183c5521d67cbe3fccc6662ae545eb2c419949bf39644d3" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/03.corners.nes"
    fetch_rom "blargg/ppu/sprite_hit_04.flip.nes" \
        "5f7142bddb51b7577f93fa22f9f668efebbeea00346d7255089e1863acb9d46a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/04.flip.nes"
    fetch_rom "blargg/ppu/sprite_hit_05.left_clip.nes" \
        "69b329658c17b953f149c2f0de77eb272089df22c815bd2fd3d6f43206791c13" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/05.left_clip.nes"
    fetch_rom "blargg/ppu/sprite_hit_06.right_edge.nes" \
        "8e6653fcb869e06873e29e5e4423122ea72ba0bf38f3ba9e39f471420db759a4" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/06.right_edge.nes"
    fetch_rom "blargg/ppu/sprite_hit_07.screen_bottom.nes" \
        "05849956f80267838c5b6556310266b794078a4300841cbb36339fd141905a0b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/07.screen_bottom.nes"
    fetch_rom "blargg/ppu/sprite_hit_08.double_height.nes" \
        "127fd966b6b32d6d88a53c5f59d7e938827783c9ad056091f119be1c4ab21c71" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/08.double_height.nes"
    fetch_rom "blargg/ppu/sprite_hit_09.timing_basics.nes" \
        "311698c717e50150edd0b5fd0016c41de686463205c20efb5630d6adb90859fd" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/09.timing_basics.nes"
    fetch_rom "blargg/ppu/sprite_hit_10.timing_order.nes" \
        "0f36bc07bfe51c416e3cc1a5231053572aa6b15aa60e6d2fd0568be49b6dc2e9" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/10.timing_order.nes"
    fetch_rom "blargg/ppu/sprite_hit_11.edge_timing.nes" \
        "5a7c121f6e76617be88a0a7035c0e402293be5c685c95b97190a8d70835736ab" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/11.edge_timing.nes"
    fetch_rom "blargg/ppu/oam_read.nes" \
        "f298973dabeb61ca35007445f7a615f77e87703c958c870986af83b1aabde926" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/oam_read/oam_read.nes"
    fetch_rom "blargg/ppu/blargg_ppu_2005_palette_ram.nes" \
        "11c1de16c67795b247169819a34b9d4dd46165478d6de19d7cd6e7311e906a80" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/palette_ram.nes"
    fetch_rom "blargg/ppu/blargg_ppu_2005_power_up_palette.nes" \
        "4a02958db36d1e1affb6e6b80d556e4a6840847cc42027d2c875fbe917db9f49" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/power_up_palette.nes"
    fetch_rom "blargg/ppu/blargg_ppu_2005_sprite_ram.nes" \
        "81275795ea64dfe22f05e35ef3316e6cf84eba40fc9538fc637a08bf263a3110" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/sprite_ram.nes"
    fetch_rom "blargg/ppu/blargg_ppu_2005_vbl_clear_time.nes" \
        "1a1d3ae8062ce0d4f1f3eafa35bf3c3e5df94fe198e7630a09678a60b03b73a0" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/vbl_clear_time.nes"
    fetch_rom "blargg/ppu/blargg_ppu_2005_vram_access.nes" \
        "a0cde2a3c98d9f62afcba62d4e8f4f4228574ff96ce96fbfdc777e1393c16ee6" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/vram_access.nes"
    fetch_rom "blargg/ppu/full_palette_flowing.nes" \
        "bcac93cba22243da0625e82126c4c12bf529b20b57dcc626d8cb0776df5156f0" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/full_palette/flowing_palette.nes"
    fetch_rom "blargg/ppu/full_palette_main.nes" \
        "7924ba0a808fb1b7029fab5b3fcfe08c8a318a9bdae2948258ffdcbb8d99b657" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/full_palette/full_palette.nes"
    fetch_rom "blargg/ppu/full_palette_smooth.nes" \
        "cf3dccb3e149d6edfd53d1d020bce988973c732f51e5cfbedac1c69fedec495f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/full_palette/full_palette_smooth.nes"
    fetch_rom "blargg/ppu/scrolltest.nes" \
        "04ebe8b768ffc31fc1fa18a21f2e1884d0d3df2588f5efee53e881a339874db7" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/scrolltest/scroll.nes"

    # ------------------------------------------------------------------
    # nestest/
    # ------------------------------------------------------------------
    fetch_rom "nestest/nestest.log" \
        "627c8e180b1a924dfa705c5dc6958fad7ab75a62de556173caf880ccc1337540" \
        "https://qmtpro.com/~nes/misc/nestest.log"
    fetch_rom "nestest/nestest.nes" \
        "f67d55fd6b3cf0bad1cc85f1df0d739c65b53e79cecb7fea8f77ec0eadab0004" \
        "https://qmtpro.com/~nes/misc/nestest.nes"

    log "sync_from_upstream.sh: done"
}

main "$@"    # ------------------------------------------------------------------
    # blargg/apu/
    # ------------------------------------------------------------------
    fetch_rom "blargg/apu/apu_test.nes" \
        "00d4722bae1c82a14528dd3220462d3fb9ce4b14b8cec996619dea23e07fef0a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/apu_test.nes"
    fetch_rom "blargg/apu/apu_test_1-len_ctr.nes" \
        "aacf86c1d773badd11392e54506a43a06a3dd0b67a4c255909d1daf770a4a1e2" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/1-len_ctr.nes"
    fetch_rom "blargg/apu/apu_test_2-len_table.nes" \
        "c002ff1483b4dfb36a6eb004d49739cd58a2dff16e0bac167d5a7c12235caeeb" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/2-len_table.nes"
    fetch_rom "blargg/apu/apu_test_3-irq_flag.nes" \
        "dd888551665937391a2d691b1f96d1858316dbfce4951306146e9e396367f079" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/3-irq_flag.nes"
    fetch_rom "blargg/apu/apu_test_4-jitter.nes" \
        "bff573d72d0f134fe307f0bb8b968b8d2ffdb85e8aadad9c152839068d6db32a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/4-jitter.nes"
    fetch_rom "blargg/apu/apu_test_5-len_timing.nes" \
        "4d88f8cc0b21303dc151af4d0f4169d79284634a73082d7ea1ae5cfafedd1e46" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/5-len_timing.nes"
    fetch_rom "blargg/apu/apu_test_6-irq_flag_timing.nes" \
        "fc1daff82dd1a49c7c1242392ffbf1c6f44fb70156868582117f2a844cc4dffd" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/6-irq_flag_timing.nes"
    fetch_rom "blargg/apu/apu_test_7-dmc_basics.nes" \
        "547324867ee0ba2aa11401001d8d1288530aa4e0ecaaac1667ce79980a388ec1" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/7-dmc_basics.nes"
    fetch_rom "blargg/apu/apu_test_8-dmc_rates.nes" \
        "5d9a79a505b37fa277cacc95a362f7e2a56e59ace7a698213d78432cc06a8867" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/8-dmc_rates.nes"
    fetch_rom "blargg/apu/apu_mixer_dmc.nes" \
        "036e7a3222f56e7a823b693bae0243e6c8c7ae032defbbd15c8631da468d6ea7" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/dmc.nes"
    fetch_rom "blargg/apu/apu_mixer_noise.nes" \
        "47b637cc911dc4416f55891c67976780e0985b6729b339a3f1db277ef6bd4910" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/noise.nes"
    fetch_rom "blargg/apu/apu_mixer_square.nes" \
        "b16e333a2d3698201fc45c21375507a80981928562d3b10f865e23da3922696a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/square.nes"
    fetch_rom "blargg/apu/apu_mixer_triangle.nes" \
        "3756d4be75126ab51b40e013e60a125e0f6f198307dcfb9612cd4477f6762279" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/triangle.nes"
    fetch_rom "blargg/apu/apu_reset_4015_cleared.nes" \
        "ef83bc2831f0ddb9e563ac5cbcfa21b129f092911ef42adabae7d47b3e990d95" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/4015_cleared.nes"
    fetch_rom "blargg/apu/apu_reset_4017_timing.nes" \
        "0e6072c6dcee98fb73dc7f3af2e48face78be300e8510515ed48dc75d15c1f13" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/4017_timing.nes"
    fetch_rom "blargg/apu/apu_reset_4017_written.nes" \
        "022bd3b45a733179d9a0a9bf0311d09ca81419d7e7434e6f559e42650b39616b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/4017_written.nes"
    fetch_rom "blargg/apu/apu_reset_irq_flag_cleared.nes" \
        "e2435b213bf21065b7c9c645359500c1c860a7395d12d051232ab14dad1b0bb5" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/irq_flag_cleared.nes"
    fetch_rom "blargg/apu/apu_reset_len_ctrs_enabled.nes" \
        "e05546cbfaa1414d9193b0212084b324ea6b13130af5f171a34c9e574f5ac373" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/len_ctrs_enabled.nes"
    fetch_rom "blargg/apu/apu_reset_works_immediately.nes" \
        "c750113762ee375319b1bfbf65c457875dbb194649d7e7b3594fba38eb8eefa1" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/works_immediately.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_01.len_ctr.nes" \
        "e1e3a29ab5369ab84a6f5f2f426c64bde86b9a1d26a906739d43fbf624bb8829" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/01.len_ctr.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_02.len_table.nes" \
        "63cc6a57fae3da5e30df9520d02b723c5b93789e8a6eef6793f876345b245b51" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/02.len_table.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_03.irq_flag.nes" \
        "6f71c7e3de4b6c00da92c20a86c1c2095196a55dc201ee3286004ecf33a08c2f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/03.irq_flag.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_04.clock_jitter.nes" \
        "46fa69b26fe8c24dc1d0b5908f90ab0141972eeb607bd563d28f53d6f4543fe6" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/04.clock_jitter.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_05.len_timing_mode0.nes" \
        "606802d6849ccfcf74e907a8512c03a50d443752d1f616e62a242a1fa7eca0ff" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/05.len_timing_mode0.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_06.len_timing_mode1.nes" \
        "0f34e26d56ad235d8d6d63565ed4728fbd0b9b8590a4fd4048eaf64283b429d4" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/06.len_timing_mode1.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_07.irq_flag_timing.nes" \
        "851c9698941d51da34b4bfbc9644aa08ee41b39c6c814cc9b8412c204ea68085" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/07.irq_flag_timing.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_08.irq_timing.nes" \
        "0a20a2b9ca9a8e78d65b500b161294c889399f0ff048edd104b07b15255946ca" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/08.irq_timing.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_09.reset_timing.nes" \
        "bb04f8328a51abb2d17e6e5362b8375f3cbfbf0641733d068b22f23e7dc588e6" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/09.reset_timing.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_10.len_halt_timing.nes" \
        "cbdaa9a5cf9c19ba2360d3349a47922eec25a3e610374d963c422f2b67c57ac9" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/10.len_halt_timing.nes"
    fetch_rom "blargg/apu/blargg_apu_2005_11.len_reload_timing.nes" \
        "40e633285a4a8710780bfd80d346dee62406f4be161eb75615f469cd9e84e132" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/11.len_reload_timing.nes"
    fetch_rom "blargg/apu/dmc_dma_during_read4_dma_2007_read.nes" \
        "a2e0fa3f6f155cbe0b8c9517b2f6a57f1fd68f13711c11d6d2fe5676c522d7b2" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/dma_2007_read.nes"
    fetch_rom "blargg/apu/dmc_dma_during_read4_dma_2007_write.nes" \
        "54c75d491c685fb4cfff281bcf3e199a41e95f6c523e2b0607d67ba039f19f84" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/dma_2007_write.nes"
    fetch_rom "blargg/apu/dmc_dma_during_read4_dma_4016_read.nes" \
        "c6af72e11c197b449129921a9992db2351d9121bb593b3d0ab71895b646b0ebe" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/dma_4016_read.nes"
    fetch_rom "blargg/apu/dmc_dma_during_read4_double_2007_read.nes" \
        "779e6e7db863a7405a3dda8723b8517a23d271e78ce4802970fb0a7d3039ce6b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/double_2007_read.nes"
    fetch_rom "blargg/apu/dmc_dma_during_read4_read_write_2007.nes" \
        "bc5281ca3f12a6d0ac9fe1a5e727ecc3cac5fc6a47f45ac130d644f0dbd522cf" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/read_write_2007.nes"
    fetch_rom "blargg/apu/dmc_tests_buffer_retained.nes" \
        "32aaccfa2fda811d1127feeaf4dcf36cf1803cca866800c71815dfb86254daae" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/buffer_retained.nes"
    fetch_rom "blargg/apu/dmc_tests_latency.nes" \
        "346c182ce408280a4fb14513f18ae519b135136a250ed3738abc295a6a1b2208" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/latency.nes"
    fetch_rom "blargg/apu/dmc_tests_status.nes" \
        "ef18582e0625dfe522bdf2f8b0b16cd221c630940fbc97c52c8cf23832ce92bd" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/status.nes"
    fetch_rom "blargg/apu/dmc_tests_status_irq.nes" \
        "81013c38721e966f037969aae7c66a5f904fc706f96437910b93f7262cb77a70" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/status_irq.nes"
    fetch_rom "blargg/apu/dpcmletterbox.nes" \
        "dbf91829a13baa8ab672fb6846be7c5ca8f5e2826ef939c189e261ed9ba43729" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dpcmletterbox/dpcmletterbox.nes"
    fetch_rom "blargg/apu/pal_apu_01.len_ctr.nes" \
        "5e4a07738703232dfefce6a26f12da304f333008c60224b27e7fbadf4a7cdc0c" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/01.len_ctr.nes"
    fetch_rom "blargg/apu/pal_apu_02.len_table.nes" \
        "ac5537885469a85e733df1a7a6a0a76a76f157f080c60d04f1128902a45423d4" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/02.len_table.nes"
    fetch_rom "blargg/apu/pal_apu_03.irq_flag.nes" \
        "e0c04111c61d0fc671990c5c3ac6cb7f57082ad687b5e11d380277c7d75e56d1" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/03.irq_flag.nes"
    fetch_rom "blargg/apu/pal_apu_04.clock_jitter.nes" \
        "dc85b14f7ece5e7bd4010b831f5b796debfdf338837c8a29a1d221de8c63776d" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/04.clock_jitter.nes"
    fetch_rom "blargg/apu/pal_apu_05.len_timing_mode0.nes" \
        "04896f081373f5ab6ce83ce115c5fc0ff823acf831f1499d7d406f4a651e7cbc" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/05.len_timing_mode0.nes"
    fetch_rom "blargg/apu/pal_apu_06.len_timing_mode1.nes" \
        "454b1b6339bd2ea27e3f4e8a8de7e2d95e3afc26940a88255e24a033d42d5a05" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/06.len_timing_mode1.nes"
    fetch_rom "blargg/apu/pal_apu_07.irq_flag_timing.nes" \
        "c91aa1fc7bcb2638f3b07996270eb38c67e8b0fefa1a0db02a34b2e2ffd883c7" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/07.irq_flag_timing.nes"
    fetch_rom "blargg/apu/pal_apu_08.irq_timing.nes" \
        "dee9e8fac623327b04e8160456362cc1fe4ca0b2c8e3f45eedcb6851ebb00aae" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/08.irq_timing.nes"
    fetch_rom "blargg/apu/pal_apu_10.len_halt_timing.nes" \
        "c41238ed0e7f4044c21fcd14c99b9e4516611adbee5c5f139d3bb95bebebcec9" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/10.len_halt_timing.nes"
    fetch_rom "blargg/apu/pal_apu_11.len_reload_timing.nes" \
        "1e94a9c0d829378f93b460c2c5f875418490401afd50c30cd05ea22113819909" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/11.len_reload_timing.nes"
    fetch_rom "blargg/apu/soundtest.nes" \
        "baae326d642b95637d56d4964a0bbd93799088aad111a6fb718193d33e6f4d29" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/soundtest/SNDTEST.NES"
    # ------------------------------------------------------------------
    # blargg/mmc3/
    # ------------------------------------------------------------------
    fetch_rom "blargg/mmc3/mmc3_test_1-clocking.nes" \
        "57c77c66edde8c45e17bda02691dd3c7fd0b270c1ec024dff4e11a7778dfaa37" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/1-clocking.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2-details.nes" \
        "89e1f16514aafeee90b5ab849dd73dbf1456dbd363ec2e3b798461125a33068a" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/2-details.nes"
    fetch_rom "blargg/mmc3/mmc3_test_3-A12_clocking.nes" \
        "dc6779b3d64e27b8d3b2b6dee7a1b528b9b6401ac0e6a9a1d5ab928dcd8ad6bb" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/3-A12_clocking.nes"
    fetch_rom "blargg/mmc3/mmc3_test_4-scanline_timing.nes" \
        "0474550dbf811bf1acda2178bf355edd5c100088479a09d881f84994c1690b82" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/4-scanline_timing.nes"
    fetch_rom "blargg/mmc3/mmc3_test_5-MMC3.nes" \
        "f714089b5d056a50d63854a8d13359914d20d6144d8b25e48f880116ae73d8fd" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/5-MMC3.nes"
    fetch_rom "blargg/mmc3/mmc3_test_6-MMC6.nes" \
        "e6bdbadf46cc4bf7b26e496ecab44e60a8b1279c1b9cf16df090c9832adf6943" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/6-MMC6.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2_1-clocking.nes" \
        "b06d8a97f0ca672be92c841d6af7d1e650696e86e9cc0cf6eeb90d67a6ab499b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/1-clocking.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2_2-details.nes" \
        "e7af16c764b119e60effb7b1cfeec3dd8e2e657041283693cdbbeedb4081f1e3" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/2-details.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2_3-A12_clocking.nes" \
        "b375f15b9f9d372c8084b9c50928be9e41a3ac48be831ce82d203c18891433ad" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/3-A12_clocking.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2_4-scanline_timing.nes" \
        "14a220b9d1272acc7a820ab38e9762a7cdf2d54c65e753be87f23dfcaf1bb845" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/4-scanline_timing.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2_5-MMC3.nes" \
        "e0824123d60b83868dac1189b28250f8e10376a01be468a5a74aa59937cb32ca" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/5-MMC3.nes"
    fetch_rom "blargg/mmc3/mmc3_test_2_6-MMC3_alt.nes" \
        "56698b6918453d161a8d4e51f66e363d6966b054939c8176c53c401a6b55269b" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/6-MMC3_alt.nes"
    fetch_rom "blargg/mmc3/mmc3_irq_1.Clocking.nes" \
        "699d0644bd2b6ff4c9ba598c9609f4a3da536594b6363585b2caf82cf337ac88" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/1.Clocking.nes"
    fetch_rom "blargg/mmc3/mmc3_irq_2.Details.nes" \
        "0af95238b69806c072c28aed0fa8ad812157dfee928a6c9cea8d5420268baade" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/2.Details.nes"
    fetch_rom "blargg/mmc3/mmc3_irq_3.A12_clocking.nes" \
        "3b936e1079f12bdc5e55aa82def017ddc76fd79e3879ff0478d41ca718302e7c" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/3.A12_clocking.nes"
    fetch_rom "blargg/mmc3/mmc3_irq_4.Scanline_timing.nes" \
        "3369e8f73a96ec97918c6c9440804a369a19256c57df91e62881555f21528894" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/4.Scanline_timing.nes"
    fetch_rom "blargg/mmc3/mmc3_irq_5.MMC3_rev_A.nes" \
        "6b662c2d08ee4094d89b6d1ddde330e47f81929fb642dc217b6e4c33f8926944" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/5.MMC3_rev_A.nes"
    fetch_rom "blargg/mmc3/mmc3_irq_6.MMC3_rev_B.nes" \
        "d8a2af42cdafe8046b36109e6f6ff71ca0d7f5d62c7d5953e0aa1d1828a86088" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/6.MMC3_rev_B.nes"
    # ------------------------------------------------------------------
    # blargg/sprdma/
    # ------------------------------------------------------------------
    fetch_rom "blargg/sprdma/sprdma_and_dmc_dma.nes" \
        "db3199bc1b0bdc07a316b3ab999d8fd8bb361456d2154e364c132cb06a26a10f" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprdma_and_dmc_dma/sprdma_and_dmc_dma.nes"
    fetch_rom "blargg/sprdma/sprdma_and_dmc_dma_512.nes" \
        "3789f5134b0561b4344e3f4ce08b4d2a416f67435e083917a80d87fdb9d3583c" \
        "https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprdma_and_dmc_dma/sprdma_and_dmc_dma_512.nes"
    # ------------------------------------------------------------------
    # pinobatch/holy_mapperel/, pinobatch/240pee/, quietust/
    # ------------------------------------------------------------------
    # ------------------------------------------------------------------
    # holy_mapperel/  (pinobatch / Damian Yerrick, zlib)
    # ------------------------------------------------------------------
    fetch_rom "holy_mapperel/M0_P32K_C8K_V.nes" \
        "16ad2760079963170df9f4f0ad60b87419402fd89ab832037639fe8b54e6d6fc" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M0_P32K_CR32K_V.nes" \
        "de10f742a93da298347b65677422e9453ad3d0860265144d6c04b37827c1d53d" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M0_P32K_CR8K_V.nes" \
        "1a33ba05af3e7b392e4c320034c618aa903bf9446c49b3d1cba0851f9905d919" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M10_P128K_C64K_S8K.nes" \
        "adcb2f6e4b67795a99ea0515cf71e3ef30f1b37e5a42643048342e19a14b33b7" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M10_P128K_C64K_W8K.nes" \
        "8fd3397559d50f36823ec1b4a15d4795cfa5a43d5334a463e45480cf894e4898" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M118_P128K_C64K.nes" \
        "a8439589f83ae14c66c53dbfea3b139c6b9dd7f22b44ec24108b0655e0979cfd" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M11_P64K_C64K_V.nes" \
        "ce96c35263788dec062aed329d951b351415a48bd1681cd7c6eb7328a342c321" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M11_P64K_CR32K_V.nes" \
        "17a5e37065b314bbddd9ba934db723d39b559d993014caf6f2d6de0d59c5663f" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M180_P128K_CR8K_H.nes" \
        "211c02ee86c90992fd89404874fa81c0c6c2091b98e81498275e7981d721521b" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M180_P128K_H.nes" \
        "2ebb89ca58dab86a1898689397224e0ad30fd9d4b2f3c63ea6500ad3b43c489f" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K.nes" \
        "d02b15ed43c87141f5cbd728ebdddb54332c9c74959ae78667f6012439f00834" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_C128K.nes" \
        "a3f520601c1cc92842f02b415b803d6b8c95bbf0c34ff6baaca34a79b127765b" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_C128K_S8K.nes" \
        "2263d212fe9c8e857f89c846962e7e78f3ba885e1413644b94e50cfff65ecd08" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_C128K_W8K.nes" \
        "f1d76578b70617d49440c123a30b40f5c6b4a53836aa50fb078c734bac8e0868" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_C32K.nes" \
        "77f77f779720741185bc07442d16dee6b99856ab8ccdb20762cde17570d0e88e" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_C32K_S8K.nes" \
        "c6101b411ee99f6b0c8e6ec0abe32b9fcfa5c32cef8017dd728bb3c992d16efd" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_C32K_W8K.nes" \
        "3d330d32bb45d41ce6c9666b80f580ff2912444b44f833ee89d062794abdfe32" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P128K_CR8K.nes" \
        "0595f0896d71d6e54ad19b00a2cdfb6d1665e3166167a06935c5971105ed5793" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P512K_CR8K_S32K.nes" \
        "7db5b5191ce842d44a5a8cb132a58d7116741053d4bd0f8a5def832be80e655a" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P512K_CR8K_S8K.nes" \
        "c3f239ea8f2fa1023a272b5e1b5add884b583e79ffd6487771cc53a1f4566b5c" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P512K_S32K.nes" \
        "0d86aa1a48ce6dfac4e71a858797f6ab4969776d7b5c6cd06208e64382f31977" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M1_P512K_S8K.nes" \
        "d9ae34427b0c73033426c5310f1bfa66ababf00567c9aa83267f8b23ebac9fcf" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M28_P512K.nes" \
        "6b0c4fb33dda383f4fd81320e60b4959415f2cdce92f9c7aebbf071e3dc6ec02" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M28_P512K_CR32K.nes" \
        "d06782c2a893049aad4832e914f0d921e3cd2af8ccf644f51ff76590c6f1ee49" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M2_P128K_CR8K_V.nes" \
        "c7e83755bd9adbb7c705ea9f29535442af7390444632f9f824fcf4c00632069b" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M2_P128K_V.nes" \
        "81bd36f2a0aa1ce80e0dfae5a44cc16a1c3ed230b5f2ffdcaf9ac19945687bae" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M34_P128K_CR8K_H.nes" \
        "cb00e7b0092000b272f1c5bc341038da45031d44993d1a1abde864b5eafb1d85" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M34_P128K_H.nes" \
        "1b9efae66c5cc34bba56a3eab2b3f95f17b558b871c7df631000a7715bb8cc0c" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M3_P32K_C32K_H.nes" \
        "499891c6d8c7a1e7631bdc601d9d624938842735f92fe1fda7b19ef9fae514b7" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M4_P128K.nes" \
        "b145558f6d301fd294e3e7641a7a1c414d9f743b1f89aace324c61b72c082e36" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M4_P128K_CR32K.nes" \
        "428387f3178e1b594f9932af1138e1c5f60f1e0b30ec2f89f5f3c142db1af72d" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M4_P128K_CR8K.nes" \
        "edb301630dae50a8470c1fb914f436434a150c886d9537d072275b751a9b4125" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M4_P256K_C256K.nes" \
        "278041824af3a0530d6a1367fa1a1d3bb544d2dd1e97ad8372673f7fe0379b17" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M66_P64K_C16K_V.nes" \
        "e62c4e897063fbf71e5bd3901dfb39fe04082150d0fb9291cc6756e08a688496" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M69_P128K_C64K_S8K.nes" \
        "c913e1e1c27df0f2cff0d31a1b4310626a77894bb2fdb1e8623f35827ecd153c" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M69_P128K_C64K_W8K.nes" \
        "212497a73e3164d27b7b43227bc71abb529c07dae09602068761f983e9696f5b" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M78.3_P128K_C64K.nes" \
        "459f50efc839872599091e3b66c48b972716df773342b42f4f6e0cbd94c232f0" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M7_P128K.nes" \
        "e4a63a3e290e7cf3eb8539d7144a4a26cc448dcc4c06d4e865642f6f10c13afb" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M7_P128K_CR8K.nes" \
        "4aa0050f36ae17e17701506821e5147df5b843bcdf2827468fa9c66e4b7ac1ba" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    fetch_rom "holy_mapperel/M9_P128K_C64K.nes" \
        "19ab7c11d4b68a88e37d76d83c9076785fa87e68da4b21ab5a8f5cd32dac7696" \
        "https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z"
    # ------------------------------------------------------------------
    # 240pee/        (pinobatch / Damian Yerrick, GPL-2.0-or-later)
    # ------------------------------------------------------------------
    fetch_rom "240pee/240pee-bnrom.nes" \
        "41371e93b83e71e6f99ffaf8cafa96c02eec9cc4d59e8ab57282ab61f8ac654e" \
        "https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z"
    fetch_rom "240pee/240pee-sgrom.nes" \
        "fa467568744ed49ebdc5f5ff231d04e8b2299e80cff30ce7340f4c1c0d5a4ecc" \
        "https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z"
    fetch_rom "240pee/240pee-tgrom.nes" \
        "d4b1f0f9d842d32a0ae3102f03e89e076ff29851fb1331b1d50f56f30f6a87c0" \
        "https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z"
    fetch_rom "240pee/240pee.nes" \
        "04f01d7372f66ea2befe325b9bd655a9fcc395a31fa46d9466286bb8f9d2e62e" \
        "https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240pee.nes"
    fetch_rom "240pee/mdfourier4k-chrrom.nes" \
        "bbb5a48018658acd011094f3f35d9e86efa41e4f802140e17ada7db8c0004056" \
        "https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z"
    fetch_rom "240pee/mdfourier4k.nes" \
        "587b332f182b9666b4a0f61e5d590d800b5b57328e9a7c24314e93a465661bd2" \
        "https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z"
    # ------------------------------------------------------------------
    # quietust/      (Quietust, PD)
    # ------------------------------------------------------------------
    fetch_rom "quietust/colors.nes" \
        "3a8f68e199c14be8ee27e4378690f0e82c71c799eaff87405c4cbdb2104f998e" \
        "http://qmtpro.com/~nes/demos/colors.zip"
    fetch_rom "quietust/colors2.nes" \
        "effcd45f0c004b9f6661ae9912baa7811d78fb77823443e95a75405ba0054bb4" \
        "http://qmtpro.com/~nes/demos/colors2.zip"
    fetch_rom "quietust/mmc5exram.nes" \
        "4500f9ae4fafeaf23e64e7016b4bfc79f31a8de6affb9a4d99be6c509c274889" \
        "http://qmtpro.com/~nes/demos/mmc5exram.zip"
    fetch_rom "quietust/scanline.nes" \
        "cde711acf138fa8287c7173f2d4862ae17f898d76ca282b12511dbeec1c264ff" \
        "http://qmtpro.com/~nes/demos/scanline.zip"
    fetch_rom "quietust/square.nes" \
        "fbfb396f5652e39494a1a140be8171d7a58f500b5b5ee53e34f5601341b748ee" \
        "http://qmtpro.com/~nes/demos/square.zip"
