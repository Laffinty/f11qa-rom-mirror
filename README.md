# f11qa-rom-mirror

> **第三方 NES 测试 ROM 长期可获得性 mirror 仓库**，服务于 FCEUX11 项目的 F11QA v1.8 测试体系。
> **独立于 FCEUX11 主仓库**——本仓库仅存储已核实 license 的 ROM + 元数据，与 FCEUX11 引擎代码物理隔离，避免任何版权争议。
> **关联**：[FCEUX11/docs/plans/FCEUX11-v1.8_F11QA-构建计划.md §四](https://github.com/Laffinty/FCEUX11/blob/wip1.8/docs/plans/FCEUX11-v1.8_F11QA-构建计划.md)（外部链接）

---

## 这是什么

本仓库是 **F11QA 测试体系** 的 ROM 长期 mirror。它**不是** FCEUX11 模拟器的一部分，而是配套基础设施：

| 维度 | FCEUX11 主仓库 | **本仓库（f11qa-rom-mirror）** |
|---|---|---|
| 内容 | NES 模拟器引擎 + GUI + 测试 harness + 测试用例 schema** | 仅 NES 测试 ROM + 元数据 |
| 版权 | GPL-2.0（COPYING 文件） | **每个 ROM 各异**（LICENSES.md 单独标注） |
| License 风险 | 由 GPL-2 覆盖 | 仅纳入 PD / zlib / GPL 兼容 ROM |
| 仓库 metadata license | GPL-2 | **CC0-1.0**（我添加的元数据） |
| 同步来源 | FCEUX11 项目自身 | 第三方上游（christopherpow/nes-test-roms 等） |

**目的**：当第三方上游（个人主页 / 老论坛附件 / mediafire 等）失效时，F11QA 测试体系仍能从本仓库稳定拉取 ROM，并附带完整 license audit trail。

---

## 仓库结构

```
f11qa-rom-mirror/
├── README.md                         # 本文件
├── LICENSE                           # 仓库 metadata 的 CC0-1.0 声明
├── LICENSES.md                       # 每个 ROM 的 license + source URL + SHA-256（强制）
├── SHA256SUMS.txt                    # 全 ROM 校验和（顶层索引，与 LICENSES.md 互校）
├── .gitignore                         # 仅忽略临时/构建产物
├── docs/
│   └── 构建计划.md                    # 本仓库自身的构建/同步/审计策略
├── scripts/
│   ├── sync_from_upstream.sh                        # 从上游 fetch + 校验
│   ├── verify_licenses.sh                          # license manifest 校验
│   └── audit_sha256.sh                             # 全 ROM 校验
├── blargg/
│   ├── cpu/...                                      # blargg CPU 测试 ROM
│   ├── ppu/...
│   ├── apu/...
│   ├── mmc3/...
│   └── ...                                          # 全部 blargg ROM
├── nestest/                                         # kevtris nestest.nes + nestest.log
├── bisqwit/                                        # bisqwit 套件
├── holy_mapperel/                                  # pinobatch Holy Mapperel
├── 240pee/                                         # pinobatch 240p test
├── quietust/                                       # scanline / exram / Color Bars
├── rainwarrior/                                    # NES 2.0 submapper / n163 / mmc5ramsize
├── tepples/                                        # test28 / mmc1atest / fme7* / allpads / 等
├── awj/                                            # vrc24test / mmc5test_v2
├── natt/                                           # vrc6test
├── nk/                                             # mmc3irqtest
├── drag/                                           # mmc5test
├── takuikaninja/                                   # FDS-Mirroring / Audio-Registers / 等
├── sour/                                           # FdsIrqTests v7
├── 3gengames/                                      # PaddleTest3
├── rahsennor/                                      # dma_sync_test_v2
├── lidnariq/                                       # serom / oamtest3 / vaus / raw pack2
├── nesstress/                                      # Flubba NEStress
├── bntest/                                         # BNTest
└── 31test/                                         # mapper 31 测试
```

---

## 加入政策

**仅纳入以下 license 的 ROM**：

| License | 是否纳入 | 上游典型代表 |
|---|---|---|
| **PD**（Public Domain） | ✅ | christopherpow/nes-test-roms 内绝大多数 / qmtpro.com / nesninja.com 标记 PD |
| **zlib / 类 zlib** | ✅ | pinobatch/holy-mapperel / pinobatch/volume_tests |
| **GPL**（任何版本） | ✅ | pinobatch/240pee / 部分社区 ROM |
| **GPL-2.0** | ✅ | 继承 FCEUX11 主项目 license 兼容性 |
| **MIT / BSD / Apache** | ✅（理论可接受，但目前 NES 测试 ROM 套件无此例） | — |
| **专有 / 不明 / 来源缺失** | ❌ | — |

**任何 PR 引入新 ROM 必须同时**：

1. 在 `LICENSES.md` 内追加一条记录（license 字段必须填写）
2. 在 `SHA256SUMS.txt` 追加对应校验和
3. 在 PR description 内明示上游 URL + 上游 license 声明
4. CI 的 `verify_licenses.sh` 必须 PASS**（任何 license 字段缺失 → PR 拒绝）**

---

## 同步策略（4 层防御）

### 第 1 层：上游优先级
1. **christopherpow/nes-test-roms**（GitHub，社区主归档，~150 ROM）
2. **pinobatch GitHub 仓库**（Holy Mapperel / 240pee）
3. **TakuikaNinja GitHub**（FDS 系列）
4. **bisqwit iki.fi**（bisqwit 套件）
5. **qmtpro.com/~nes**（Quietust 主页 + nestest）
6. **nesdev 论坛附件**（mmc3irqtest / mmc5test / 等）
7. **mediafire 老链**（vrc6test 等）

### 第 2 层：每个 ROM 至少 3 源
每个 ROM 的 fetch 顺序：
1. **主源**（上游原 URL）
3. **本仓库 mirror**（自循环防兜底）
4. **Wayback Machine**（终极 fallback）

任何 ROM 在 download script 中必须尝试**至少 2 个不同源的 URL**，失败后才宣告失败。

### 第 3 层：每周自动 sync
GitHub Action `f11qa-rom-mirror-sync.yml`：
- 每周日 UTC 02:00 自动 fetch + 校验
- 任何 ROM 哈希变动 → 自动开 issue 提醒 maintainer 审查上游变更
- 任何 ROM 拉取失败 → 立即 issue + Slack webhook

### 第 4 层：每月 immutable archive
每月 1 号打 `git tag -a archive-YYYY-MM` 标签：
- 不可变 commit pointer，永久可读
- 即使 mirror 仓库被改写，archive tag 仍指向当时的完整快照

---

## 与 F11QA 主仓库的关系

F11QA 主仓库（`Laffinty/FCEUX11`）的下载脚本 `scripts/download_<suite>_roms.ps1` 内置如下源链：

```powershell
$sources = @(
    # 主源：上游原 URL
    "https://github.com/christopherpow/nes-test-roms/raw/master/blargg/...",

    # 第 2 源：本仓库 mirror（**主仓库 GitHub Actions 不可达上游时启用**）
    "https://raw.githubusercontent.com/Laffinty/f11qa-rom-mirror/main/blargg/...",

    # 第 3 源：Wayback Machine
    "https://web.archive.org/web/2024/https://github.com/christopherpow/nes-test-roms/raw/master/blargg/..."
)
```

**FCEUX11 主仓库 CI 默认不 vendor ROM**（避免污染）；本仓库作为**独立 mirror** 提供 ROM 字节。

---

## 验证与审计

任何 commit 引入新 ROM 必须经过：

1. **本地 fetch + SHA-256 校验**（`scripts/audit_sha256.sh`）
2. **License manifest 校验**（`scripts/verify_licenses.sh`）
3. **CI 自动重跑**（`f11qa-rom-mirror-verify.yml` workflow）
4. **Maintainer 人工 review**（必须确认上游 license 声明 + 同意本仓库 license 政策）

CI 失败 → PR 拒绝。Maintainer 撤销 license 假设 → PR 拒绝 + 全仓库审计重置。

---

## 版本

- v1.0（2026-09-21）：初版，配套 FCEUX11 v1.8 / F11QA
- 后续以 F11QA 节奏发布

---

## 贡献与法律声明

**贡献者须知**：向本仓库 PR 即表示你确认：

1. 你引入的 ROM **确实是 PD / zlib / GPL 兼容**（或其他在 README 列出的 license）
2. 你有权限以该 license 再分发该 ROM
3. 上游 license 声明 URL 已在 PR 内提供
4. **如有版权疑问 → 不要 PR，立即在 issue 内报告**

**免责声明**：本仓库维护者尽力核实每个 ROM 的 license 状态，但**不保证绝对无虞**。如发现任何 license 错误，请在 issue 内报告，会立刻移除相关 ROM。

---

## License

- **本仓库 metadata**（README.md, LICENSES.md, SHA256SUMS.txt, scripts/, docs/）：**CC0-1.0**（见 `LICENSE` 文件）
- **每个 ROM**：见 `LICENSES.md` 内单条标注

---

## 相关链接

- FCEUX11 项目主页：https://github.com/Laffinty/FCEUX11
- FCEUX11 v1.8 F11QA 构建计划：https://github.com/Laffinty/FCEUX11/blob/wip1.8/docs/plans/FCEUX11-v1.8_F11QA-构建计划.md
- NESDev Wiki: Emulator tests（ROM 权威索引）：https://www.nesdev.org/wiki/Emulator_tests
- christopherpow/nes-test-roms（社区主归档）：https://github.com/christopherpow/nes-test-roms
- pinobatch/holy-mapperel：https://github.com/pinobatch/holy-mapperel
- pinobatch/240p-test-mini：https://github.com/pinobatch/240p-test-mini
- TakuikaNinja/FDS-*-Test：https://github.com/TakuikaNinja
- bisqwit iki.fi NES tests：https://bisqwit.iki.fi/src/nes_tests/
- Quietust qmtpro：https://www.qmtpro.com/~nes/
- Wayback Machine：https://web.archive.org/