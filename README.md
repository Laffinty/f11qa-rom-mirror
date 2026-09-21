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

## 收录范围与 License 政策

> 以下为 **OWNER 主动收录** ROM 时的 **最低 license 标准**。
> 不属于以下范围的 ROM **不会** 被收录，无论谁提出请求。

| License | 是否纳入 | 收录前提 | 上游典型代表 |
|---|---|---|---|
| **PD**（Public Domain / CC0） | ✅ | 上游有显式 PD / CC0 声明；不接受 "应该是 PD" | blargg / qmtpro.com / nesninja.com |
| **zlib / 类 zlib** | ✅ | 上游 LICENSE 文件可公开访问；保留署名 | pinobatch/holy-mapperel / volume_tests |
| **GPL-2.0-only / -or-later** | ✅ | 上游 LICENSE 文件可公开访问；**且** 上游同时公开源码或构建方法 | pinobatch/240pee |
| **GPL-3.0-only / -or-later** | ✅ | 同上；GPL-3 "v3 only" / 专利条款需逐项审查 | （目前 NES 测试 ROM 套件无此例）|
| **MIT / BSD / Apache** | ✅ | 上游 LICENSE 文件可公开访问；保留署名 | （目前 NES 测试 ROM 套件无此例）|
| **专有 / 来源缺失 / license 不明 / 自声明 PD 但无依据** | ❌ | — | — |

> 注：本表对 GPL 的接受 **与 FCEUX11 主项目 license 兼容性无关**——
> 主项目不 vendor ROM，两边的 license 担保互不干涉。

**收录边界（强约束）**：

- ❌ 本仓库 **不接受** 外部 PR 直接 vendor 新 ROM
  （OWNER 必须亲自验证上游 license 才能承担收录责任）
- ❌ 本仓库 **不接受** 对 ROM 字节的任何修改（1:1 镜像为唯一形态）
- ❌ 本仓库 **不** 提供 "以本仓库 license 为准" 的声明——
  每个 ROM 的 license 以 **上游声明** 为准

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

任何 commit **新增 ROM 或改动 license 字段**
（OWNER 内部动作或外部 metadata PR）必须经过：

1. **本地 fetch + SHA-256 校验**（`scripts/audit_sha256.sh`）
2. **License manifest 校验**（`scripts/verify_licenses.sh`）
3. **CI 自动重跑**（`f11qa-rom-mirror-verify.yml` workflow）
4. **OWNER 人工 review**（必须确认上游 license 声明 + 同意本仓库 license 政策）
   —— 本仓库为单一 OWNER 维护，**不** 存在第三方 maintainer 介入

CI 失败 → PR 拒绝。OWNER 撤销 license 假设 → 全仓库审计重置。

---

## 版本

- v1.0（2026-09-21）：初版，配套 FCEUX11 v1.8 / F11QA
- 后续以 F11QA 节奏发布

---

## 收录与法律声明

> 本节为本仓库的法律核心。OWNER 收录 ROM 前必读；上游作者与权利人在维权时必读。
> 如本节与其他章节冲突，**以本节为准**。

### 1. 本仓库的性质与角色

f11qa-rom-mirror 由 **OWNER（@Laffinty）** **主动收录** 第三方 NES 测试 ROM，
目的是为 FCEUX11 / F11QA 测试体系提供 **1:1 长期可获得性 mirror**。

- 本仓库 **不是** ROM 原作的官方分发渠道；**不是** fork；**不是** 协作开发项目。
- 上游原作者（blargg / kevtris / pinobatch / Quietust / AWJ / N-K / Drag / TakuikaNinja 等）
  **不是** 本仓库的 "contributor"。他们未曾向本仓库提交过任何文件，
  未对本仓库的收录行为表示过同意或异议，也未与 OWNER 建立任何
  隶属、代理、赞助或合作关系。
- OWNER 仅基于上游 **公开可访问** 的 license 声明进行 **善意收录**；
  **不** 对 ROM 字节做任何修改、混淆、再打包或衍生作品创作。
- 所有 ROM 的版权与署名权 **完整保留于各自原作者**；本仓库不主张任何上游权利。

### 2. 收录流程（OWNER 内部动作）

**本仓库不接受外部 PR 提交新 ROM 文件**。所有收录动作由 OWNER 单方面完成：

1. OWNER 在上游（GitHub / 个人主页 / nesdev 论坛附件 / Wayback Machine）发现候选 ROM
2. OWNER 在上游找到 **显式的、可公开访问的 license 声明**
   （不接受 "应该是 PD" 这类无依据表述）
3. OWNER 本地执行 `scripts/sync_from_upstream.sh` → 校验 SHA-256 →
   在 `LICENSES.md` 与 `SHA256SUMS.txt` 追加条目
4. OWNER 自己签出 commit 并 push
   （CI `f11qa-rom-mirror-verify.yml` 二次校验）

如果你希望 OWNER 收录某个尚未纳入的 ROM：

- ✅ **在 issue 内提出收录请求**
  （附上游 URL + 上游 license 声明 URL + ROM 用途说明）
- ❌ **不要直接发 PR 添加 ROM 文件** —— OWNER 会立刻 close，
  因为 OWNER 必须亲自验证上游 license 才能承担收录责任

### 3. PR 提交须知（仅适用于 metadata 修改，不含 ROM）

如果你的 PR 仅修改本仓库的 metadata
（README / LICENSES.md / SHA256SUMS.txt / scripts / docs），
**且不新增任何 ROM 文件**，OWNER 欢迎提交。

PR 即表示你确认：

1. 你拥有该 metadata 改动的内容版权，**或** 该改动属于 CC0 / 公有领域
2. 你的改动 **不** 引入任何上游 license 不明或受限的 ROM
3. 你的改动 **不** 绕过 `scripts/verify_licenses.sh`
   或 `scripts/audit_sha256.sh` 的任何校验

### 4. 免责声明

OWNER **尽力** 核实每个 ROM 的 license 状态，但 **不保证绝对无虞**：

- 上游 license 声明可能被原作者撤回、修改或误标
- OWNER 无法对 ROM 字节做反向工程以验证其真伪
- 个别 ROM 的 license 处于灰色地带
  （如作者 "自声明" PD，但版权法上未必成立）

如发现任何 license 错误或疑虑：

- 在本仓库开 issue（首选）
- 或 GitHub 私信 @Laffinty
- 或通过 commit 历史中的邮箱联系 OWNER

OWNER 收到核实后 **24 小时内** 移除相关 ROM。

### 5. Take-Down 流程（强承诺）

若您是某 ROM 的原作者或合法权利人，并希望从本仓库移除该 ROM：

1. **在本仓库开 issue**（首选），或通过上述任一渠道联系 OWNER
2. OWNER 收到后 **24 小时内** 确认请求者身份
   （核对 GitHub 用户名 / 上游 commit history / 域名邮箱）
3. 一经确认，立即：
   - 删除该 ROM 文件
   - 从 `LICENSES.md` 移除对应条目
   - 从 `SHA256SUMS.txt` 移除对应行
   - （如请求者强烈要求）使用 `git filter-repo` 清理 git 历史
4. 在 issue 内回复 "已移除"
5. **OWNER 不询问理由** —— 这是 OWNER 的安全底线

### 6. GitHub DMCA / 法定下架

若您希望通过 GitHub 官方 DMCA 流程下架，请直接联系 GitHub：
<https://github.com/contact/dmca>。

本仓库 OWNER 会 **配合** GitHub 的合规流程，但 **不** 主动代表 GitHub 处理 DMCA
（本仓库非美国 DMCA Service Provider，亦未对外提供 DMCA
notice-and-takedown 基础设施）。

### 7. 上游商标 / 署名 / 合理使用

- 所有 ROM 字节的版权与署名权归各自原作者所有，
  本仓库 **未取得** 任何上游商标使用权。
- 本仓库对上游作者姓名、handle、ROM 名称的引用
  **仅为事实性归属标注**（见 `LICENSES.md`），
  属于合理使用范围，**不** 暗示任何背书、联名或合作关系。
- 任何上游商标的所有权归原商标所有人所有。

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