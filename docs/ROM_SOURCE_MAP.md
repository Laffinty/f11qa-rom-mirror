# ROM Source Map

> 按套件聚合的上游源映射。
> 单 ROM 的精确上游 URL / license / SHA-256 见 `LICENSES.md`。
> 本文件用于"上游消失时去哪找替代" + "vendor 优先级"查询。

## 套件 / 上游映射

| # | 套件 | 子目录 | 主源 | 第 2 源 | License | 当前状态 |
|---|---|---|---|---|---|---|
| 1 | blargg | `blargg/` | github.com/christopherpow/nes-test-roms | (本仓库自循环) | PD | 部分 vendor（cpu 69 / ppu+apu+mmc3+other ≈111 待） |
| 2 | nestest | `nestest/` | qmtpro.com/~nes | nickmass.com | PD | 已 vendor（2/2：nes + log） |
| 3 | bisqwit | `bisqwit/` | bisqwit.iki.fi/src/nes_tests | christopherpow | zlib | 部分 vendor（5/5 已写入清单；zip 内多 ROM 待解析） |
| 4 | Holy Mapperel | `holy_mapperel/` | github.com/pinobatch/holy-mapperel | — | zlib | 未 vendor |
| 5 | 240pee | `240pee/` | github.com/pinobatch/240p-test-mini | forums.nesdev.com | GPL | 未 vendor |
| 6 | Quietust | `quietust/` | qmtpro.com/~nes | — | PD | 未 vendor |
| 7 | rainwarrior | `rainwarrior/` | forums.nesdev.org（附件，单 ROM 散落） + rainwarrior.ca | pinobatch（无 GitHub release） | PD / zlib | ⏸ 暂搁（2026-09-23：单 ROM 在沙箱内全部 404；forums.nesdev.org Cloudflare 拦；web.archive.org 无 .nes 实体；见 §暂搁套件） |
| 8 | tepples | `tepples/` | christopherpow/nes-test-roms + tepples GitHub | — | PD / zlib | 未 vendor |
| 9 | AWJ | `awj/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 10 | natt | `natt/` | forums.nesdev.org + mediafire（老链） | web.archive.org | PD | 未 vendor |
| 11 | nk | `nk/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 12 | drag | `drag/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 13 | TakuikaNinja | `takuikaninja/` | github.com/TakuikaNinja（4 个 FDS repo 各自独立 release） | — | 未知 | ⏸ 暂搁（2026-09-23：4 个上游 repo 均无 LICENSE / README 也无 license 声明；按构建计划 §五严格政策不过滤；见 §暂搁套件） |
| 14 | Sour | `sour/` | Sour Mesen GitHub | — | MIT | 未 vendor |
| 15 | 3gengames | `3gengames/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 16 | Rahsennor | `rahsennor/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 17 | lidnariq | `lidnariq/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 18 | NEStress | `nesstress/` | nesdev wiki 历史附件 | forums.nesdev.org | PD | 未 vendor |
| 19 | BNTest | `bntest/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 20 | 31_test | `31test/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 21 | Damian Yerrick volume_tests | `damianyerrick/volume_tests/` | christopherpow/nes-test-roms/volume_tests | pinobatch | zlib | 未 vendor |

注：每个套件的子目录在仓库根已就位，但 vendor 字节是否完整以 `SHA256SUMS.txt` 为准。

## Vendor 优先级（§十二 决策 5）

```
blargg (cpu → ppu → apu → mmc3 → sprdma → other)
  → pinobatch (Holy Mapperel + 240pee)
  → bisqwit + Quietust + nestest
  → 剩余 16 套件
```

理由：

1. **blargg 优先**：覆盖最广（CPU/PPU/APU/MMC3 完整性最强），F11QA 测试套件依赖度高。
2. **pinobatch 第二**：Holy Mapperel + 240pee 是现代 mapper 测试核心；240pee 显式 GPL，license 清楚。
3. **bisqwit / Quietust / nestest 第三**：补 CPU + 视频信号测试；bisqwit 注意 zip 内多 ROM（见下方）。
4. **其余**：按维护紧急度排序——mapper 测试（rainwarrior/tepples/AWJ/nk/drag）→ FDS（takuikaninja/sour）→ 输入设备（3gengames/lidnariq/rahsennor）→ 杂项（nesstress/bntest/31test/damianyerrick）。

## 上游失效应对

| 主源类别 | 失效时第一动作 |
|---|---|
| github.com 仓库被删 / 私有化 | 检查是否 archive.org 有 snapshot；OWNER 转储到本仓库并删除原 github.com URL |
| 个人主页（qmtpro.com / iki.fi） | web.archive.org snapshot；OWNER 转储并删除原 URL |
| nesdev 论坛附件 | 论坛 archive；OWNER 转储并删除原 URL |
| mediafire 老链 | 立即转储 + 删除原 URL；不建议长期依赖 |

任何上游失效都触发以下动作：
1. OWNER 在 `sync_from_upstream.sh` 调整 fetch_rom 调用链（主源 → 兜底源 → wayback）
2. OWNER 在 `LICENSES.md` 更新对应条目的 Upstream URL 字段
3. OWNER 在 issue 内记录失效事实

## 维护工具

新 vendor ROM（手动流程，OWNER 单人操作）：

1. vendor 文件到对应子目录
2. 在 `LICENSES.md` 追加 entry（License / Upstream URL / Upstream Author / Verified By / Notes）
3. 在 `SHA256SUMS.txt` 追加 `<sha256>  <path>` 行
4. 在 `scripts/sync_from_upstream.sh` 的 `main()` 末尾追加 `fetch_rom` 三行调用
   （格式参见同文件已存在的 76 条调用）
5. 跑 `bash scripts/verify_licenses.sh` 与 `bash scripts/audit_sha256.sh`，全部 PASS 后 push

校验：

```bash
bash scripts/verify_licenses.sh   # 76 entries checked, 0 errors
bash scripts/audit_sha256.sh      # 76 passed, 0 mismatched, 0 missing
```

## 已知 URL 精度问题

- `bisqwit/*.nes` 的 Upstream URL 是 zip 包（`cpu_dummy_writes.zip` / `cpu_exec_space.zip`）。`sync_from_upstream.sh` 跑这些条目的 URL 会失败 → sync issue 触发 → OWNER 手工解 zip 后将单 ROM 入仓，或在 `sync_from_upstream.sh` 加 zip-aware 解压分支。

## 暂搁套件（2026-09-23）

下列套件在沙箱环境下无法 vendor，记录原因与恢复条件：

### rainwarrior

- **状态**：⏸ 暂搁（2026-09-23）
- **沙箱内实测**：
  - rainwarrior.ca/projects/nes/<rom>.zip 单 ROM 直链全 404（mict / mset / mmc5ramsize / n163_soundram / 31_test / bxrom_512k_test 全部试过）
  - rainwarrior.ca/projects/nes/swap_tests.zip（13 MB）与 famicom_audio_swap_tests.zip（101 KB）能下到，但不是 F11QA 单 ROM vendor 粒度
  - forums.nesdev.org/download/file.php?id=2247 等附件 URL Cloudflare 403，沙箱拉不到
  - web.archive.org CDX API 确认 wayback 仅缓存 forums.nesdev.org 的 HTML 页面，无 .nes 二进制实体
  - rainwarrior 个人 GitHub（@bbbradsmith）有 21 个公开 repo，无 nes-testroms 集中仓库
- **恢复条件**：OWNER 用浏览器手动从 forums.nesdev.org / wayback 抓 .nes → 丢到 `rainwarrior/<test>/<name>.nes` → 走 §维护工具 5 步流程

### TakuikaNinja（4 个 FDS 测试）

- **状态**：⏸ 暂搁（2026-09-23）
- **沙箱内实测**：
  - 4 个上游 repo 各自有 GitHub Release 资产：FDS-Mirroring-Test v1.1、FDS-Audio-Registers v1.2、FDS-4030D1-Addr v1.0、FDS-4023-Test v1.0
  - 4 个 .fds 二进制（每个 65500 字节）已下载并计算 SHA-256，但未 vendor
  - 4 个 repo 均无 LICENSE 文件；README 也无 license 声明；上游作者未公开选择 license
- **恢复条件**：
  - 选项 A：联系上游（开 issue）请求作者补 LICENSE；拿到明确答复后再 vendor
  - 选项 B：上游后续添加 LICENSE 文件，scrape 后再 vendor
  - 选项 C：放宽政策（暂不考虑，与构建计划 §五冲突）

## 已下载未 vendor（手清 pending）

下列 .fds 二进制已下载到 `.tmp/`（gitignored 临时目录），SHA-256 已记录：

| 文件 | 上游 release | SHA-256 |
|---|---|---|
| `mirroring-test.fds` | TakuikaNinja/FDS-Mirroring-Test v1.1 | `501bda77be6190bfb57d07a707880e74029e3e0f910441f6f7ba88431e70c2e3` |
| `audio-registers.fds` | TakuikaNinja/FDS-Audio-Registers v1.2 | `80ccda5443653426f27e6b4b3125c9834e97931c50b9fcdccc00b8367ef9fe28` |
| `4030d1-addr.fds` | TakuikaNinja/FDS-4030D1-Addr v1.0 | `ed9f62f8c85c3d94909359a55ff94a53427473378a2eff556f4b465f268fe0c5` |
| `4023-test.fds` | TakuikaNinja/FDS-4023-Test v1.0 | `958dfad1656aaf1c3c82b162b68acada253ff59ed01726ff79430222fa49df3c` |

恢复 vendor 时可直接复用这些 SHA-256 + 上游 release URL。