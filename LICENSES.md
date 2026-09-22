# f11qa-rom-mirror License Manifest

> **每个 NES 测试 ROM 的 license 单独登记**。
> 本文件的每个条目都由 **OWNER（@Laffinty）主动收录** 时填写，
> 反映 OWNER **善意核实** 的上游 license 状态，**不** 代表上游作者已审核本仓库的收录行为。
> 上游 URL 必须可访问；license 字段必须明确填写；不允许任何"应当是 PD"等模糊表述。
>
> 维护脚本：`scripts/verify_licenses.sh` 校验每个条目的合法性。
> 法律声明以 `README.md §收录与法律声明` 为准；如本文件与 README 冲突，**以 README 为准**。

---

## ROM Inventory Index（22 套件 / ~290 ROM）

| 套件 | 子目录 | 上游 | 状态 |
|---|---|---|---|
| blargg | `blargg/` | christopherpow/nes-test-roms | 🚧 首批 vendor（计划中） |
| kevtris nestest | `nestest/` | qmtpro.com/~nes | 🚧 |
| bisqwit | `bisqwit/` | bisqwit.iki.fi/src/nes_tests | 🚧 |
| pinobatch Holy Mapperel | `holy_mapperel/` | github.com/pinobatch/holy-mapperel | 🚧 |
| pinobatch 240pee | `240pee/` | github.com/pinobatch/240p-test-mini | 🚧 |
| Quietust | `quietust/` | qmtpro.com/~nes | 🚧 |
| rainwarrior | `rainwarrior/` | christopherpow/nes-test-roms | 🚧 |
| tepples | `tepples/` | christopherpow/nes-test-roms + tepples GitHub | 🚧 |
| AWJ | `AWJ/` | nesdev 论坛附件 | 🚧 |
| natt | `natt/` | nesdev 论坛附件（mediafire） | 🚧 |
| N-K | `NK/` | nesdev 论坛附件 | 🚧 |
| Drag | `drag/` | nesdev 论坛附件 | 🚧 |
| TakuikaNinja | `takuikaninja/` | github.com/TakuikaNinja | 🚧 |
| Sour | `FdsIrqTests/` | Sour Mesen GitHub | 🚧 |
| 3gengames | `3gengames/` | nesdev 论坛附件 | 🚧 |
| Rahsennor | `rahsennor/` | nesdev 论坛附件 | 🚧 |
| lidnariq | `lidnariq/` | nesdev 论坛附件 | 🚧 |
| Flubba NEStress | `nesstress/` | nesdev wiki 历史 | 🚧 |
| BNTest | `bntest/` | nesdev 论坛附件 | 🚧 |
| 31_test | `31test/` | nesdev 论坛附件 | 🚧 |
| Damian Yerrick volume_tests | `damianyerrick/volume_tests/` | christopherpow/nes-test-roms | 🚧 |

---

## License Manifest Entries

<!--
schema:
### <suite>/<path>
- **License**: <PD | zlib | GPL-2.0 | GPL-3.0 | CC0>
- **Upstream URL**: <canonical primary source URL>
- **Upstream Author**: <author name + handle>            ← 事实性署名，非合作/背书
- **Original Date**: <YYYY or YYYY-MM-DD if known>
- **Verified By**: <OWNER handle>, <YYYY-MM-DD>           ← OWNER 主动收录 + 善意核实，非上游授权
- **SHA-256**: <hex>  ← optional, see SHA256SUMS.txt for full list
- **Notes**: <REQUIRED — license basis + ROM-purpose info>           ← verify_licenses.sh 强制非空
       PD entries MUST cite basis: explicit upstream declaration
       OR "community consensus; third-party PD-tagged archive: <URL>"

Example:

### blargg/cpu/instr_v5_all.nes
- **License**: PD
- **Upstream URL**: https://github.com/christopherpow/nes-test-roms/raw/master/instr_test-v5/all_instrs.nes
- **Upstream Author**: Shay Green (blargg)              ← 事实性署名
- **Original Date**: 2004
- **Verified By**: @Laffinty (OWNER), 2026-09-21         ← OWNER 主动收录 + 善意核实
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM, $6000 protocol. Result code 0x80=Running, 0x81=Reset, 0x00=PASS, 0x01-0x7F=FAIL.
-->

### _(待 vendor 后逐条追加)_

### blargg/cpu/cpu_timing_test6.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_timing_test6/cpu_timing_test.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU instruction timing test (NTSC), pass=2 beeps / fail=1 beep.

### blargg/cpu/instr_test_v5_all.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/all_instrs.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU instruction behavior test (official + unofficial opcodes), $6000 result protocol.

### blargg/cpu/instr_test_v5_official.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/official_only.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU instruction behavior test (official opcodes only), $6000 result protocol.

### blargg/cpu/instr_misc.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/instr_misc.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Miscellaneous CPU instruction edge cases (16-bit address wrap, dummy reads).

### blargg/cpu/cpu_interrupts_v2.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/cpu_interrupts.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU IRQ/NMI behavior + timing test (v2).

### blargg/ppu/ppu_vbl_nmi.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/ppu_vbl_nmi.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL/NMI full suite (all 10 sub-tests combined), $6000 protocol. Upstream `readme.txt` enumerates individual test cases.

### blargg/ppu/01-vbl_basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/01-vbl_basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL sub-test: basics — NMI flag set/clear at scanline 241.

### blargg/ppu/02-vbl_set_time.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/02-vbl_set_time.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL sub-test: timing of NMI flag set during pre-render scanline.

### blargg/ppu/03-vbl_clear_time.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/03-vbl_clear_time.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL sub-test: timing of NMI flag clear.

### blargg/ppu/04-nmi_control.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/04-nmi_control.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU NMI sub-test: NMI enable/disable behavior via $2000 write.

### blargg/ppu/05-nmi_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/05-nmi_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU NMI sub-test: NMI execution timing.

### blargg/ppu/06-suppression.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/06-suppression.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU NMI sub-test: NMI suppression via $2000 bit 7 write during pre-render.

### blargg/ppu/07-nmi_on_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/07-nmi_on_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU NMI sub-test: precise cycle timing of NMI assertion on next instruction.

### blargg/ppu/08-nmi_off_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/08-nmi_off_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL/NMI sub-test: NMI off-timing (cycle of NMI deassertion relative to pre-render scanline).

### blargg/ppu/09-even_odd_frames.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/09-even_odd_frames.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL/NMI sub-test: even/odd frame skip behavior (NTSC).

### blargg/ppu/10-even_odd_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_vbl_nmi/rom_singles/10-even_odd_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU VBL/NMI sub-test: even/odd frame timing precision.

### blargg/ppu/oam_stress.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/oam_stress/oam_stress.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. OAM stress test -- endurance test for OAM DMA corruption during rendering.

### blargg/ppu/ppu_open_bus.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/ppu_open_bus/ppu_open_bus.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. PPU open bus behavior -- reads from unmapped/disabled VRAM return bus decay state.

### blargg/ppu/sprite_overflow_1.Basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/1.Basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite overflow sub-test 1 -- 8-sprite-per-scanline limit basics.

### blargg/ppu/sprite_overflow_2.Details.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/2.Details.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite overflow sub-test 2 -- evaluation order and dummy sprite behavior details.

### blargg/ppu/sprite_overflow_3.Timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/3.Timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite overflow sub-test 3 -- timing of overflow flag set/clear within scanline.

### blargg/ppu/sprite_overflow_4.Obscure.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/4.Obscure.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite overflow sub-test 4 -- obscure edge cases (off-screen / disabled sprites interaction).

### blargg/ppu/sprite_overflow_5.Emulator.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_overflow_tests/5.Emulator.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite overflow sub-test 5 -- emulator implementation correctness checks.

### blargg/ppu/sprite_hit_01.basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/01.basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 1 -- basics of hit flag set/clear.

### blargg/ppu/sprite_hit_02.alignment.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/02.alignment.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 2 -- sprite position alignment vs background.

### blargg/ppu/sprite_hit_03.corners.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/03.corners.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 3 -- corner cases (1px / 7px / 8px offsets).

### blargg/ppu/sprite_hit_04.flip.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/04.flip.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 4 -- horizontal / vertical flip effect on hit detection.

### blargg/ppu/sprite_hit_05.left_clip.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/05.left_clip.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 5 -- left-edge x=0 clip behavior.

### blargg/ppu/sprite_hit_06.right_edge.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/06.right_edge.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 6 -- right-edge x=255 wrap behavior.

### blargg/ppu/sprite_hit_07.screen_bottom.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/07.screen_bottom.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 7 -- bottom-of-screen (y>=240) behavior.

### blargg/ppu/sprite_hit_08.double_height.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/08.double_height.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 8 -- 8x16 sprite (double-height) hit behavior.

### blargg/ppu/sprite_hit_09.timing_basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/09.timing_basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 9 -- timing basics (when hit flag is checked during scanline).

### blargg/ppu/sprite_hit_10.timing_order.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/10.timing_order.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 10 -- timing order (which sprite pair wins under overlap).

### blargg/ppu/sprite_hit_11.edge_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprite_hit_tests_2005.10.05/11.edge_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Sprite 0 hit sub-test 11 -- edge timing (hit at scanline start / end).

### blargg/ppu/oam_read.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/oam_read/oam_read.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. OAM read during rendering: secondary OAM read patterns from $2004 during visible scanlines.

### blargg/ppu/blargg_ppu_2005_palette_ram.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/palette_ram.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Blargg PPU test (2005.09.15b) -- palette RAM behavior.

### blargg/ppu/blargg_ppu_2005_power_up_palette.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/power_up_palette.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Blargg PPU test (2005.09.15b) -- power-up palette state.

### blargg/ppu/blargg_ppu_2005_sprite_ram.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/sprite_ram.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Blargg PPU test (2005.09.15b) -- sprite RAM behavior (OAM read/write during rendering).

### blargg/ppu/blargg_ppu_2005_vbl_clear_time.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/vbl_clear_time.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Blargg PPU test (2005.09.15b) -- VBL flag clear timing.

### blargg/ppu/blargg_ppu_2005_vram_access.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_ppu_tests_2005.09.15b/vram_access.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Blargg PPU test (2005.09.15b) -- VRAM access timing during scanline.

### blargg/ppu/full_palette_flowing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/full_palette/flowing_palette.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Full NES palette sweep test (animated palette flow across NES color range).

### blargg/ppu/full_palette_main.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/full_palette/full_palette.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Full NES palette static grid (all 64 colors displayed simultaneously).

### blargg/ppu/full_palette_smooth.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/full_palette/full_palette_smooth.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Full NES palette smooth gradient (emphasis-brightened palette sweep).

### blargg/ppu/scrolltest.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/scrolltest/scroll.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Nametable scroll behavior test -- verifies scroll split / mid-scanline changes.

---

## License Policy

### 接受的 license

| License | 是否接受 | 收录前提 |
|---|---|---|
| **PD**（Public Domain） | ✅ | 上游显式 PD 声明；不接受 "应该是 PD" |
| **zlib / 类 zlib** | ✅ | 上游 LICENSE 文件可公开访问；保留署名 |
| **GPL-2.0-only / -or-later** | ✅ | 上游 LICENSE 文件可公开访问；**且** 上游同时公开源码或构建方法 |
| **GPL-3.0-only / -or-later** | ✅ | 同上；GPL-3 含 "v3 only" / 专利条款需逐项审查 |
| **CC0** | ✅ | 与 PD 等效 |
| **MIT / BSD / Apache** | ✅ | 上游 LICENSE 文件可公开访问；保留署名 |
| **专有 / 来源缺失 / license 不明** | ❌ | 必须排除 |

> 注：本表对 GPL 的接受 **与 FCEUX11 主项目 license 兼容性无关**——
> 主项目不 vendor ROM，两边的 license 担保互不干涉。

### License 验证流程（OWNER 主动收录）

本仓库 **不接受** 外部 PR 直接 vendor 新 ROM。所有新 ROM 由 OWNER 单方面收录：

1. OWNER 必须在上游找到 **明确的、可公开访问的 license 声明**
2. OWNER 在本文件追加一条 entry（schema 见上方注释块）
3. `scripts/verify_licenses.sh` 自动校验：
   - License 字段 ∈ 接受列表
   - Upstream URL 是公开可访问的（不能是私有域名 / 内网 URL）
   - 上游确实存在该 license 声明文件
4. CI PASS 后，OWNER 签出 commit 并 push

---

## Take-Down 流程

如果某 ROM 的原作者请求移除：

1. Maintainer 收到 issue / email 后 24h 内确认请求者身份
2. 立即删除该 ROM 文件 + 本文件对应条目 + `SHA256SUMS.txt` 对应行
3. 用 `git filter-repo` 清理 git 历史（**仅在原作者强烈要求时执行**——通常删除文件即可）
4. 在 issue 内回复"已移除"
5. **无需问理由**——这是 maintainer 安全底线

---

## References

- [NESDev Wiki: Emulator tests](https://www.nesdev.org/wiki/Emulator_tests)
- [FCEUX11 v1.8 F11QA 构建计划](https://github.com/Laffinty/FCEUX11/blob/wip1.8/docs/plans/FCEUX11-v1.8_F11QA-构建计划.md)
- [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
- [christopherpow/nes-test-roms](https://github.com/christopherpow/nes-test-roms)

---

**最后更新**：2026-09-21（schema 初始）

### blargg/cpu/instr_test_v5_01-basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/01-basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 01 / basics.

### blargg/cpu/instr_test_v5_02-implied.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/02-implied.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 02 / implied.

### blargg/cpu/instr_test_v5_03-immediate.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/03-immediate.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 03 / immediate.

### blargg/cpu/instr_test_v5_04-zero_page.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/04-zero_page.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 04 / zero_page.

### blargg/cpu/instr_test_v5_05-zp_xy.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/05-zp_xy.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 05 / zp_xy.

### blargg/cpu/instr_test_v5_06-absolute.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/06-absolute.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 06 / absolute.

### blargg/cpu/instr_test_v5_07-abs_xy.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/07-abs_xy.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 07 / abs_xy.

### blargg/cpu/instr_test_v5_08-ind_x.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/08-ind_x.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 08 / ind_x.

### blargg/cpu/instr_test_v5_09-ind_y.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/09-ind_y.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 09 / ind_y.

### blargg/cpu/instr_test_v5_10-branches.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/10-branches.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 10 / branches.

### blargg/cpu/instr_test_v5_11-stack.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/11-stack.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 11 / stack.

### blargg/cpu/instr_test_v5_12-jmp_jsr.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/12-jmp_jsr.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 12 / jmp_jsr.

### blargg/cpu/instr_test_v5_13-rts.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/13-rts.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 13 / rts.

### blargg/cpu/instr_test_v5_14-rti.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/14-rti.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 14 / rti.

### blargg/cpu/instr_test_v5_15-brk.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/15-brk.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 15 / brk.

### blargg/cpu/instr_test_v5_16-special.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v5/rom_singles/16-special.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 16 / special.

### blargg/cpu/instr_test_v3_all_instrs.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/all_instrs.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: all_instrs.

### blargg/cpu/instr_test_v3_official_only.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/official_only.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: official_only.

### blargg/cpu/instr_test_v3_01-implied.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/01-implied.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 01 / implied.

### blargg/cpu/instr_test_v3_02-immediate.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/02-immediate.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 02 / immediate.

### blargg/cpu/instr_test_v3_03-zero_page.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/03-zero_page.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 03 / zero_page.

### blargg/cpu/instr_test_v3_04-zp_xy.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/04-zp_xy.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 04 / zp_xy.

### blargg/cpu/instr_test_v3_05-absolute.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/05-absolute.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 05 / absolute.

### blargg/cpu/instr_test_v3_06-abs_xy.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/06-abs_xy.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 06 / abs_xy.

### blargg/cpu/instr_test_v3_07-ind_x.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/07-ind_x.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 07 / ind_x.

### blargg/cpu/instr_test_v3_08-ind_y.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/08-ind_y.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 08 / ind_y.

### blargg/cpu/instr_test_v3_09-branches.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/09-branches.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 09 / branches.

### blargg/cpu/instr_test_v3_10-stack.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/10-stack.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 10 / stack.

### blargg/cpu/instr_test_v3_11-jmp_jsr.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/11-jmp_jsr.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 11 / jmp_jsr.

### blargg/cpu/instr_test_v3_12-rts.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/12-rts.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 12 / rts.

### blargg/cpu/instr_test_v3_13-rti.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/13-rti.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 13 / rti.

### blargg/cpu/instr_test_v3_14-brk.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/14-brk.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 14 / brk.

### blargg/cpu/instr_test_v3_15-special.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_test-v3/rom_singles/15-special.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 15 / special.

### blargg/cpu/instr_misc_01-abs_x_wrap.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/01-abs_x_wrap.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 01 / abs_x_wrap.

### blargg/cpu/instr_misc_02-branch_wrap.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/02-branch_wrap.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 02 / branch_wrap.

### blargg/cpu/instr_misc_03-dummy_reads.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/03-dummy_reads.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 03 / dummy_reads.

### blargg/cpu/instr_misc_04-dummy_reads_apu.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_misc/rom_singles/04-dummy_reads_apu.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 04 / dummy_reads_apu.

### blargg/cpu/instr_timing_instr_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_timing/instr_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: instr_timing.

### blargg/cpu/instr_timing_1-instr_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_timing/rom_singles/1-instr_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 1 / instr_timing.

### blargg/cpu/instr_timing_2-branch_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/instr_timing/rom_singles/2-branch_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 2 / branch_timing.

### blargg/cpu/cpu_interrupts_v2_1-cli_latency.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/1-cli_latency.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 1 / cli_latency.

### blargg/cpu/cpu_interrupts_v2_2-nmi_and_brk.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/2-nmi_and_brk.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 2 / nmi_and_brk.

### blargg/cpu/cpu_interrupts_v2_3-nmi_and_irq.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/3-nmi_and_irq.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 3 / nmi_and_irq.

### blargg/cpu/cpu_interrupts_v2_4-irq_and_dma.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/4-irq_and_dma.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 4 / irq_and_dma.

### blargg/cpu/cpu_interrupts_v2_5-branch_delays_irq.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_interrupts_v2/rom_singles/5-branch_delays_irq.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 5 / branch_delays_irq.

### blargg/cpu/cpu_reset_ram_after_reset.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_reset/ram_after_reset.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: ram_after_reset.

### blargg/cpu/cpu_reset_registers.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_reset/registers.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: registers.

### blargg/cpu/cpu_dummy_reads_cpu_dummy_reads.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/cpu_dummy_reads/cpu_dummy_reads.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: cpu_dummy_reads.

### blargg/cpu/branch_timing_1.Branch_Basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/branch_timing_tests/1.Branch_Basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 1.Branch_Basics.

### blargg/cpu/branch_timing_2.Backward_Branch.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/branch_timing_tests/2.Backward_Branch.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 2.Backward_Branch.

### blargg/cpu/branch_timing_3.Forward_Branch.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/branch_timing_tests/3.Forward_Branch.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 3.Forward_Branch.

### blargg/cpu/blargg_nes_cpu_test5_cpu.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_nes_cpu_test5/cpu.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: cpu.

### blargg/cpu/blargg_nes_cpu_test5_official.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_nes_cpu_test5/official.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: official.

### blargg/cpu/nes_instr_test_01-implied.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/01-implied.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 01 / implied.

### blargg/cpu/nes_instr_test_02-immediate.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/02-immediate.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 02 / immediate.

### blargg/cpu/nes_instr_test_03-zero_page.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/03-zero_page.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 03 / zero_page.

### blargg/cpu/nes_instr_test_04-zp_xy.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/04-zp_xy.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 04 / zp_xy.

### blargg/cpu/nes_instr_test_05-absolute.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/05-absolute.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 05 / absolute.

### blargg/cpu/nes_instr_test_06-abs_xy.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/06-abs_xy.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 06 / abs_xy.

### blargg/cpu/nes_instr_test_07-ind_x.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/07-ind_x.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 07 / ind_x.

### blargg/cpu/nes_instr_test_08-ind_y.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/08-ind_y.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 08 / ind_y.

### blargg/cpu/nes_instr_test_09-branches.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/09-branches.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 09 / branches.

### blargg/cpu/nes_instr_test_10-stack.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/10-stack.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 10 / stack.

### blargg/cpu/nes_instr_test_11-special.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/nes_instr_test/rom_singles/11-special.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. CPU test ROM: 11 / special.

### bisqwit/cpu_dummy_writes_oam.nes
- **License**: PD
- **Upstream URL**: https://bisqwit.iki.fi/src/nes_tests/cpu_dummy_writes.zip
- **Upstream Author**: Joel Yliluoma (bisqwit)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Extracted from upstream zip `cpu_dummy_writes.zip` (internal path `cpu_dummy_writes/cpu_dummy_writes_oam.nes`). CPU dummy writes test (OAM write variant). Tests $2003/$2004 OAM behavior.

### bisqwit/cpu_dummy_writes_ppumem.nes
- **License**: PD
- **Upstream URL**: https://bisqwit.iki.fi/src/nes_tests/cpu_dummy_writes.zip
- **Upstream Author**: Joel Yliluoma (bisqwit)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Extracted from upstream zip `cpu_dummy_writes.zip` (internal path `cpu_dummy_writes/cpu_dummy_writes_ppumem.nes`). CPU dummy writes test (PPU memory access variant). Tests $2006/$2007 reads.

### bisqwit/test_cpu_exec_space_apu.nes
- **License**: PD
- **Upstream URL**: https://bisqwit.iki.fi/src/nes_tests/cpu_exec_space.zip
- **Upstream Author**: Joel Yliluoma (bisqwit)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Extracted from upstream zip `cpu_exec_space.zip` (internal path `cpu_exec_space/test_cpu_exec_space_apu.nes`). CPU executes from $4015 (APU status) — verifies code exec from any memory location.

### bisqwit/test_cpu_exec_space_ppuio.nes
- **License**: PD
- **Upstream URL**: https://bisqwit.iki.fi/src/nes_tests/cpu_exec_space.zip
- **Upstream Author**: Joel Yliluoma (bisqwit)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Extracted from upstream zip `cpu_exec_space.zip` (internal path `cpu_exec_space/test_cpu_exec_space_ppuio.nes`). CPU executes from PPU I/O ($2000-$2007) — verifies code exec from any memory location.

### bisqwit/test_ppu_read_buffer.nes
- **License**: PD
- **Upstream URL**: https://bisqwit.iki.fi/src/nes_tests/ppu_read_buffer.zip
- **Upstream Author**: Joel Yliluoma (bisqwit)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Extracted from upstream zip `ppu_read_buffer.zip` (internal path `ppu_read_buffer/test_ppu_read_buffer.nes`). PPU $2007 read buffer test pack — comprehensive PPU $2007 read behavior verification.

### nestest/nestest.nes
- **License**: PD
- **Upstream URL**: https://qmtpro.com/~nes/misc/nestest.nes
- **Upstream Author**: Kevin Horton (kevtris)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Hosted on qmtpro.com (Quietust) by permission of author. CPU test ROM (kevtris). Start at $C000, compare execution to nestest.log. Reference truth log generated on Nintendulator.

### nestest/nestest.log
- **License**: PD
- **Upstream URL**: https://qmtpro.com/~nes/misc/nestest.log
- **Upstream Author**: Kevin Horton (kevtris)
- **Verified By**: @Laffinty (OWNER), 2026-09-21
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Hosted on qmtpro.com (Quietust) by permission of author. Reference execution log for nestest.nes (kevtris). 8991 CPU instruction trace lines used for emulator verification.
### blargg/apu/apu_test.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/apu_test.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU general test suite (NTSC, all sub-tests), $6000 result protocol.

### blargg/apu/apu_test_1-len_ctr.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/1-len_ctr.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter halt/reset behavior (NTSC, sub-test 1).

### blargg/apu/apu_test_2-len_table.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/2-len_table.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter lookup table values (NTSC, sub-test 2).

### blargg/apu/apu_test_3-irq_flag.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/3-irq_flag.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU frame counter IRQ flag set/clear (NTSC, sub-test 3).

### blargg/apu/apu_test_4-jitter.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/4-jitter.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU frame counter timing jitter (NTSC, sub-test 4).

### blargg/apu/apu_test_5-len_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/5-len_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter reload/timing (NTSC, sub-test 5).

### blargg/apu/apu_test_6-irq_flag_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/6-irq_flag_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU IRQ flag set timing (NTSC, sub-test 6).

### blargg/apu/apu_test_7-dmc_basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/7-dmc_basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC channel basics (NTSC, sub-test 7).

### blargg/apu/apu_test_8-dmc_rates.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_test/rom_singles/8-dmc_rates.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC sample rate lookup (NTSC, sub-test 8).

### blargg/apu/apu_mixer_dmc.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/dmc.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC channel mixer test (NTSC). Auditory pass/fail by ear.

### blargg/apu/apu_mixer_noise.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/noise.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Noise channel mixer test (NTSC). Auditory pass/fail by ear.

### blargg/apu/apu_mixer_square.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/square.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Square channel mixer test (NTSC). Auditory pass/fail by ear.

### blargg/apu/apu_mixer_triangle.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_mixer/triangle.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Triangle channel mixer test (NTSC). Auditory pass/fail by ear.

### blargg/apu/apu_reset_4015_cleared.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/4015_cleared.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU reset state after $4015 status register cleared.

### blargg/apu/apu_reset_4017_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/4017_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU reset via $4017 write timing.

### blargg/apu/apu_reset_4017_written.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/4017_written.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU reset via $4017 write.

### blargg/apu/apu_reset_irq_flag_cleared.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/irq_flag_cleared.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU IRQ flag cleared on reset.

### blargg/apu/apu_reset_len_ctrs_enabled.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/len_ctrs_enabled.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counters enabled immediately after reset.

### blargg/apu/apu_reset_works_immediately.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/apu_reset/works_immediately.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU works immediately after power-on without reset.

### blargg/apu/blargg_apu_2005_01.len_ctr.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/01.len_ctr.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter halt behavior (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_02.len_table.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/02.len_table.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter lookup table (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_03.irq_flag.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/03.irq_flag.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU frame counter IRQ flag (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_04.clock_jitter.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/04.clock_jitter.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU frame counter clock jitter (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_05.len_timing_mode0.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/05.len_timing_mode0.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter timing mode 0 (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_06.len_timing_mode1.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/06.len_timing_mode1.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter timing mode 1 (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_07.irq_flag_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/07.irq_flag_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU IRQ flag set timing (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_08.irq_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/08.irq_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU IRQ timing (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_09.reset_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/09.reset_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU reset timing (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_10.len_halt_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/10.len_halt_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter halt timing (NTSC, blargg 2005.07.30 release).

### blargg/apu/blargg_apu_2005_11.len_reload_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/blargg_apu_2005.07.30/11.len_reload_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter reload timing (NTSC, blargg 2005.07.30 release).

### blargg/apu/dmc_dma_during_read4_dma_2007_read.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/dma_2007_read.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC DMA conflict during $2007 PPU read.

### blargg/apu/dmc_dma_during_read4_dma_2007_write.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/dma_2007_write.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC DMA conflict during $2007 PPU write.

### blargg/apu/dmc_dma_during_read4_dma_4016_read.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/dma_4016_read.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC DMA conflict during $4016 controller read.

### blargg/apu/dmc_dma_during_read4_double_2007_read.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/double_2007_read.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC DMA conflict during consecutive $2007 reads.

### blargg/apu/dmc_dma_during_read4_read_write_2007.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_dma_during_read4/read_write_2007.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC DMA conflict during $2007 read+write cycle.

### blargg/apu/dmc_tests_buffer_retained.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/buffer_retained.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC sample buffer byte retained across silence.

### blargg/apu/dmc_tests_latency.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/latency.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC fetch latency after $4015 write.

### blargg/apu/dmc_tests_status.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/status.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC status register ($4015) read state.

### blargg/apu/dmc_tests_status_irq.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dmc_tests/status_irq.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DMC IRQ flag clearing in $4015 status read.

### blargg/apu/dpcmletterbox.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/dpcmletterbox/dpcmletterbox.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. DPCM IRQ letterbox timing test (mapper 0x0B / 0x0D compatible).

### blargg/apu/pal_apu_01.len_ctr.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/01.len_ctr.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter halt (PAL, pal_apu_tests release).

### blargg/apu/pal_apu_02.len_table.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/02.len_table.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter lookup table (PAL).

### blargg/apu/pal_apu_03.irq_flag.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/03.irq_flag.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU frame counter IRQ flag (PAL).

### blargg/apu/pal_apu_04.clock_jitter.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/04.clock_jitter.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU frame counter clock jitter (PAL).

### blargg/apu/pal_apu_05.len_timing_mode0.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/05.len_timing_mode0.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter timing mode 0 (PAL).

### blargg/apu/pal_apu_06.len_timing_mode1.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/06.len_timing_mode1.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter timing mode 1 (PAL).

### blargg/apu/pal_apu_07.irq_flag_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/07.irq_flag_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU IRQ flag set timing (PAL).

### blargg/apu/pal_apu_08.irq_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/08.irq_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU IRQ timing (PAL).

### blargg/apu/pal_apu_10.len_halt_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/10.len_halt_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter halt timing (PAL).

### blargg/apu/pal_apu_11.len_reload_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/pal_apu_tests/11.len_reload_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. APU length counter reload timing (PAL).

### blargg/apu/soundtest.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/soundtest/SNDTEST.NES
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. SNDTEST: raw audio register write test harness.

### blargg/mmc3/mmc3_test_1-clocking.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/1-clocking.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 A12 pin clocking / IRQ counter (rev 1, blargg).

### blargg/mmc3/mmc3_test_2-details.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/2-details.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 IRQ counter details: reload / acknowledge / wrap (rev 1, blargg).

### blargg/mmc3/mmc3_test_3-A12_clocking.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/3-A12_clocking.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 A12 pin clocking on bank register select (rev 1, blargg).

### blargg/mmc3/mmc3_test_4-scanline_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/4-scanline_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 scanline counter A12 timing (rev 1, blargg).

### blargg/mmc3/mmc3_test_5-MMC3.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/5-MMC3.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 chip behavior vs documented hardware (rev 1, blargg).

### blargg/mmc3/mmc3_test_6-MMC6.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test/6-MMC6.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC6 (MMC3 variant used in some MCK boards) behavior (rev 1, blargg).

### blargg/mmc3/mmc3_test_2_1-clocking.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/1-clocking.nes
- **Upstream Author**: Fiskbit
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 A12 pin clocking / IRQ counter (rev 2, 2017 by Fiskbit).

### blargg/mmc3/mmc3_test_2_2-details.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/2-details.nes
- **Upstream Author**: Fiskbit
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 IRQ counter details: reload / acknowledge / wrap (rev 2, 2017 by Fiskbit).

### blargg/mmc3/mmc3_test_2_3-A12_clocking.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/3-A12_clocking.nes
- **Upstream Author**: Fiskbit
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 A12 pin clocking on bank register select (rev 2, 2017 by Fiskbit).

### blargg/mmc3/mmc3_test_2_4-scanline_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/4-scanline_timing.nes
- **Upstream Author**: Fiskbit
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 scanline counter A12 timing (rev 2, 2017 by Fiskbit).

### blargg/mmc3/mmc3_test_2_5-MMC3.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/5-MMC3.nes
- **Upstream Author**: Fiskbit
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 chip behavior vs documented hardware (rev 2, 2017 by Fiskbit).

### blargg/mmc3/mmc3_test_2_6-MMC3_alt.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_test_2/rom_singles/6-MMC3_alt.nes
- **Upstream Author**: Fiskbit
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 alternate behavior scenarios (rev 2, 2017 by Fiskbit).

### blargg/mmc3/mmc3_irq_1.Clocking.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/1.Clocking.nes
- **Upstream Author**: lidnariq
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 IRQ clocking: edge cases at $2000 write / $2001 scanline reset.

### blargg/mmc3/mmc3_irq_2.Details.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/2.Details.nes
- **Upstream Author**: lidnariq
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 IRQ counter / pending flag / acknowledge details.

### blargg/mmc3/mmc3_irq_3.A12_clocking.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/3.A12_clocking.nes
- **Upstream Author**: lidnariq
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 IRQ A12 clocking: precise cycle counts.

### blargg/mmc3/mmc3_irq_4.Scanline_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/4.Scanline_timing.nes
- **Upstream Author**: lidnariq
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 IRQ scanline timing at boundary.

### blargg/mmc3/mmc3_irq_5.MMC3_rev_A.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/5.MMC3_rev_A.nes
- **Upstream Author**: lidnariq
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 revision A IRQ quirks.

### blargg/mmc3/mmc3_irq_6.MMC3_rev_B.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc3_irq_tests/6.MMC3_rev_B.nes
- **Upstream Author**: lidnariq
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC3 revision B IRQ quirks.

### blargg/sprdma/sprdma_and_dmc_dma.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprdma_and_dmc_dma/sprdma_and_dmc_dma.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Sprite DMA during DMC DMA test (NROM-256). PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Tests sprite DMA conflict with DMC DMA fetch

### blargg/sprdma/sprdma_and_dmc_dma_512.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/sprdma_and_dmc_dma/sprdma_and_dmc_dma_512.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Sprite DMA during DMC DMA test (NROM-512 / MMC3 512K variant). PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. Same test as sprdma_and_dmc_dma.nes but for 512K board layout.

### holy_mapperel/M0_P32K_C8K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M0_P32K_C8K_V.nes

### holy_mapperel/M0_P32K_CR32K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M0_P32K_CR32K_V.nes

### holy_mapperel/M0_P32K_CR8K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M0_P32K_CR8K_V.nes

### holy_mapperel/M10_P128K_C64K_S8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M10_P128K_C64K_S8K.nes

### holy_mapperel/M10_P128K_C64K_W8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M10_P128K_C64K_W8K.nes

### holy_mapperel/M118_P128K_C64K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M118_P128K_C64K.nes

### holy_mapperel/M11_P64K_C64K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M11_P64K_C64K_V.nes

### holy_mapperel/M11_P64K_CR32K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M11_P64K_CR32K_V.nes

### holy_mapperel/M180_P128K_CR8K_H.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M180_P128K_CR8K_H.nes

### holy_mapperel/M180_P128K_H.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M180_P128K_H.nes

### holy_mapperel/M1_P128K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K.nes

### holy_mapperel/M1_P128K_C128K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_C128K.nes

### holy_mapperel/M1_P128K_C128K_S8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_C128K_S8K.nes

### holy_mapperel/M1_P128K_C128K_W8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_C128K_W8K.nes

### holy_mapperel/M1_P128K_C32K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_C32K.nes

### holy_mapperel/M1_P128K_C32K_S8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_C32K_S8K.nes

### holy_mapperel/M1_P128K_C32K_W8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_C32K_W8K.nes

### holy_mapperel/M1_P128K_CR8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P128K_CR8K.nes

### holy_mapperel/M1_P512K_CR8K_S32K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P512K_CR8K_S32K.nes

### holy_mapperel/M1_P512K_CR8K_S8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P512K_CR8K_S8K.nes

### holy_mapperel/M1_P512K_S32K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P512K_S32K.nes

### holy_mapperel/M1_P512K_S8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M1_P512K_S8K.nes

### holy_mapperel/M28_P512K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M28_P512K.nes

### holy_mapperel/M28_P512K_CR32K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M28_P512K_CR32K.nes

### holy_mapperel/M2_P128K_CR8K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M2_P128K_CR8K_V.nes

### holy_mapperel/M2_P128K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M2_P128K_V.nes

### holy_mapperel/M34_P128K_CR8K_H.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M34_P128K_CR8K_H.nes

### holy_mapperel/M34_P128K_H.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M34_P128K_H.nes

### holy_mapperel/M3_P32K_C32K_H.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M3_P32K_C32K_H.nes

### holy_mapperel/M4_P128K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M4_P128K.nes

### holy_mapperel/M4_P128K_CR32K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M4_P128K_CR32K.nes

### holy_mapperel/M4_P128K_CR8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M4_P128K_CR8K.nes

### holy_mapperel/M4_P256K_C256K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M4_P256K_C256K.nes

### holy_mapperel/M66_P64K_C16K_V.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M66_P64K_C16K_V.nes

### holy_mapperel/M69_P128K_C64K_S8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M69_P128K_C64K_S8K.nes

### holy_mapperel/M69_P128K_C64K_W8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M69_P128K_C64K_W8K.nes

### holy_mapperel/M78.3_P128K_C64K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M78.3_P128K_C64K.nes

### holy_mapperel/M7_P128K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M7_P128K.nes

### holy_mapperel/M7_P128K_CR8K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M7_P128K_CR8K.nes

### holy_mapperel/M9_P128K_C64K.nes
- **License**: zlib
- **Upstream URL**: https://github.com/pinobatch/holy-mapperel/releases/download/v0.02/holy-mapperel-bin-0.02.7z
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Mapper test ROM from Holy Mapperel 0.02 release (zlib). Pinobatch multi-mapper audio-conflict test 鈥?write $6000 to acknowledge result. Internal archive path: testroms/M9_P128K_C64K.nes

### 240pee/240pee-bnrom.nes
- **License**: GPL-2.0-or-later
- **Upstream URL**: https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z
- **Upstream Author**: Damian Yerrick (pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Pinobatch 240p test suite for NES (GPL-2.0-or-later). Released v0.23 (2023-03-03). Source: nes/ in pinobatch/240p-test-mini. ROM contains comprehensive video/audio calibration patterns (color bars, SMPTE, PLUGE, drop shadow, audio sync, etc.). Internal archive path: 240pee-bnrom.nes (BNROM 512Kbit build, v0.23)

### 240pee/240pee-sgrom.nes
- **License**: GPL-2.0-or-later
- **Upstream URL**: https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z
- **Upstream Author**: Damian Yerrick (pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Pinobatch 240p test suite for NES (GPL-2.0-or-later). Released v0.23 (2023-03-03). Source: nes/ in pinobatch/240p-test-mini. ROM contains comprehensive video/audio calibration patterns (color bars, SMPTE, PLUGE, drop shadow, audio sync, etc.). Internal archive path: 240pee-sgrom.nes (SGROM 512Kbit build, v0.23)

### 240pee/240pee-tgrom.nes
- **License**: GPL-2.0-or-later
- **Upstream URL**: https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z
- **Upstream Author**: Damian Yerrick (pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Pinobatch 240p test suite for NES (GPL-2.0-or-later). Released v0.23 (2023-03-03). Source: nes/ in pinobatch/240p-test-mini. ROM contains comprehensive video/audio calibration patterns (color bars, SMPTE, PLUGE, drop shadow, audio sync, etc.). Internal archive path: 240pee-tgrom.nes (TGROM 512Kbit build, v0.23)

### 240pee/240pee.nes
- **License**: GPL-2.0-or-later
- **Upstream URL**: https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240pee.nes
- **Upstream Author**: Damian Yerrick (pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Pinobatch 240p test suite for NES (GPL-2.0-or-later). Released v0.23 (2023-03-03). Source: nes/ in pinobatch/240p-test-mini. ROM contains comprehensive video/audio calibration patterns (color bars, SMPTE, PLUGE, drop shadow, audio sync, etc.). Internal archive path: 240pee.nes (NROM-256 main build, v0.23)

### 240pee/mdfourier4k-chrrom.nes
- **License**: GPL-2.0-or-later
- **Upstream URL**: https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z
- **Upstream Author**: Damian Yerrick (pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Pinobatch 240p test suite for NES (GPL-2.0-or-later). Released v0.23 (2023-03-03). Source: nes/ in pinobatch/240p-test-mini. ROM contains comprehensive video/audio calibration patterns (color bars, SMPTE, PLUGE, drop shadow, audio sync, etc.). Internal archive path: mdfourier4k-chrrom.nes (MDFourier audio test, NES 32K+CHR ROM build, v0.23)

### 240pee/mdfourier4k.nes
- **License**: GPL-2.0-or-later
- **Upstream URL**: https://github.com/pinobatch/240p-test-mini/releases/download/v0.23/240p-nes-others.7z
- **Upstream Author**: Damian Yerrick (pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Pinobatch 240p test suite for NES (GPL-2.0-or-later). Released v0.23 (2023-03-03). Source: nes/ in pinobatch/240p-test-mini. ROM contains comprehensive video/audio calibration patterns (color bars, SMPTE, PLUGE, drop shadow, audio sync, etc.). Internal archive path: mdfourier4k.nes (MDFourier audio test, NES 32K PRG build, v0.23)

### quietust/colors.nes
- **License**: PD
- **Upstream URL**: http://qmtpro.com/~nes/demos/colors.zip
- **Upstream Author**: Quietust (qmtpro.com)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Quietust (qmtpro.com) PD test ROM. PPU palette viewer (basic color bars). Internal archive path: colors.nes

### quietust/colors2.nes
- **License**: PD
- **Upstream URL**: http://qmtpro.com/~nes/demos/colors2.zip
- **Upstream Author**: Quietust (qmtpro.com)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Quietust (qmtpro.com) PD test ROM. PPU palette viewer v2 (enhanced, more precise palette viewing). Internal archive path: colors2.nes

### quietust/mmc5exram.nes
- **License**: PD
- **Upstream URL**: http://qmtpro.com/~nes/demos/mmc5exram.zip
- **Upstream Author**: Quietust (qmtpro.com)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Quietust (qmtpro.com) PD test ROM. MMC5 executable ExRAM demo/proof-of-concept. Internal archive path: mmc5exram.nes

### quietust/scanline.nes
- **License**: PD
- **Upstream URL**: http://qmtpro.com/~nes/demos/scanline.zip
- **Upstream Author**: Quietust (qmtpro.com)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Quietust (qmtpro.com) PD test ROM. PPU emulator accuracy test (scanline timing detection). Internal archive path: scanline.nes

### quietust/square.nes
- **License**: PD
- **Upstream URL**: http://qmtpro.com/~nes/demos/square.zip
- **Upstream Author**: Quietust (qmtpro.com)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Quietust (qmtpro.com) PD test ROM. Aspect ratio measurement utility (PPU square pattern). Internal archive path: square.nes

### blargg/vbl_nmi_timing/1.frame_basics.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/1.frame_basics.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU VBL/NMI timing 鈥?frame basics (sub-test 1).

### blargg/vbl_nmi_timing/2.vbl_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/2.vbl_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU VBL flag timing (sub-test 2).

### blargg/vbl_nmi_timing/3.even_odd_frames.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/3.even_odd_frames.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU even/odd frame timing (sub-test 3).

### blargg/vbl_nmi_timing/4.vbl_clear_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/4.vbl_clear_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU VBL clear timing (sub-test 4).

### blargg/vbl_nmi_timing/5.nmi_suppression.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/5.nmi_suppression.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU NMI suppression (sub-test 5).

### blargg/vbl_nmi_timing/6.nmi_disable.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/6.nmi_disable.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU NMI disable timing (sub-test 6).

### blargg/vbl_nmi_timing/7.nmi_timing.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vbl_nmi_timing/7.nmi_timing.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NTSC PPU NMI assertion timing (sub-test 7).

### blargg/read_joy3/count_errors.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/read_joy3/count_errors.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NES controller $4016/$4017 read error count (DMC DMA corruption test).

### blargg/read_joy3/count_errors_fast.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/read_joy3/count_errors_fast.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NES controller read error count 鈥?fast variant (shorter run).

### blargg/read_joy3/test_buttons.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/read_joy3/test_buttons.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NES controller button visual test (single-button press visual feedback).

### blargg/read_joy3/thorough_test.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/read_joy3/thorough_test.nes
- **Upstream Author**: Shay Green (blargg)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. NES controller thorough test (multi-button, multi-frame).

### awj/mmc5test_v2/mmc5test.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc5test_v2/mmc5test.nes
- **Upstream Author**: AWJ
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC5 mapper v2 test (full coverage incl. PRG/CHR banking, split mode).

### drag/mmc5test/mmc5test.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/mmc5test/mmc5test.nes
- **Upstream Author**: drag
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: PD by community consensus; third-party PD-tagged archive: https://nesninja.com/game/nes/public-domain. MMC5 mapper v1 test (original, pre-AWJ-revision).

### damianyerrick/volume_tests/volumes.nes
- **License**: zlib
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/volume_tests/volumes.nes
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: NES audio channel balance / mixer test (square / triangle / noise / DMC).

### damianyerrick/vaus-test/vaus-test.nes
- **License**: zlib
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/vaus-test/vaus-test.nes
- **Upstream Author**: Damian Yerrick (pinobatch / Tepples)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Arkanoid Vaus controller test (potentiometer + button readback).

### sour/fdsirqtests/fdsirqtests.fds
- **License**: MIT
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/fdsirqtests/fdsirqtests.fds
- **Upstream Author**: Sour (Mesen emulator project)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: FDS IRQ timing tests v7 (Famicom Disk System disk image).

### sour/fdsirqtests/fdsirqtestsV7_patched.fds
- **License**: MIT
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/fdsirqtests/fdsirqtestsV7_patched.fds
- **Upstream Author**: Sour (Mesen emulator project)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: FDS IRQ timing tests v7 鈥?patched variant (timer reload at first IRQ).

### 3gengames/PaddleTest3/PaddleTest.nes
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/PaddleTest3/PaddleTest.nes
- **Upstream Author**: 3gengames (Andrew Ayers)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: Arkanoid Vaus paddle controller test. Verifies paddle reads and button combinations across 3 difficulty settings.

### tepples/tvpassfail/tv.nes
- **License**: zlib
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/tvpassfail/tv.nes
- **Upstream Author**: Damian Yerrick (tepples / pinobatch)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: TV pass / fail pattern: NTSC chroma-luma crosstalk test (displayed differently on RGB PPU vs NTSC NES). Verifies PPU composite-video artifact emulation accuracy.

### nesstress/NEStress/NEStress.NES
- **License**: PD
- **Upstream URL**: https://raw.githubusercontent.com/christopherpow/nes-test-roms/master/stress/NEStress.NES
- **Upstream Author**: Flubba (Loopy)
- **Verified By**: @Laffinty (OWNER), 2026-09-22
- **Notes**: NEStress: comprehensive PPU/CPU stress test. Some sub-tests are designed to fail on real hardware 鈥?used to verify emulator behavior vs documented hardware behavior.

