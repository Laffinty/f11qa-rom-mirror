# f11qa-rom-mirror License Manifest

> **每个 NES 测试 ROM 的 license 单独登记**。
> 上游 URL 必须可访问；license 字段必须明确填写；不允许任何"应当是 PD"等模糊表述。
>
> 维护脚本：`scripts/verify_licenses.sh` 校验每个条目的合法性。

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
- **License**: <PD | zlib | GPL | GPL-2.0 | GPL-3.0 | CC0>
- **Upstream URL**: <canonical primary source URL>
- **Upstream Author**: <author name + handle>
- **Original Date**: <YYYY or YYYY-MM-DD if known>
- **Verified By**: <maintainer handle>, <YYYY-MM-DD>
- **SHA-256**: <hex>  ← optional, see SHA256SUMS.txt for full list
- **Notes**: <free text — e.g. "Test ROM, $6000 protocol" or "Includes nestest.log as reference truth">

Example:

### blargg/cpu/instr_v5_all.nes
- **License**: PD
- **Upstream URL**: https://github.com/christopherpow/nes-test-roms/raw/master/instr_test-v5/all_instrs.nes
- **Upstream Author**: Shay Green (blargg)
- **Original Date**: 2004
- **Verified By**: @Laffinty, 2026-09-21
- **Notes**: CPU test ROM, $6000 protocol. Result code 0x80=Running, 0x81=Reset, 0x00=PASS, 0x01-0x7F=FAIL.
-->

### _(待 vendor 后逐条追加)_

---

## License Policy

### 接受的 license

| License | 是否接受 | 备注 |
|---|---|---|
| **PD**（Public Domain） | ✅ | NES 测试 ROM 套件的主流 license |
| **zlib / 类 zlib** | ✅ | pinobatch 套件典型采用 |
| **GPL-2.0** | ✅ | 与 FCEUX11 主项目 license 兼容 |
| **GPL-3.0** | ✅ | 兼容 GPL-2（GPL-3 含 "v3 only" 限制，需逐项审查） |
| **CC0** | ✅ | 极端 permissive，与 PD 等效 |
| **MIT / BSD / Apache** | ✅（理论可接受） | 目前 NES 测试 ROM 套件无此例 |
| **专有 / 来源缺失 / 不明** | ❌ | 必须排除 |

### License 验证流程

每个 PR 引入新 ROM 时：

1. Maintainer 必须在上游找到**明确的 license 声明**
2. 在本文件追加一条 entry
3. `scripts/verify_licenses.sh` 自动校验：
   - License 字段 ∈ 接受列表
   - Upstream URL 是公开可访问的（不能是私有域名 / 内网 URL）
   - 上游确实存在该 license 声明文件
4. CI PASS 后合并

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