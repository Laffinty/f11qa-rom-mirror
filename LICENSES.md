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
