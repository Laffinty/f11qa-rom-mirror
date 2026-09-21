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
| 7 | rainwarrior | `rainwarrior/` | github.com/christopherpow/nes-test-roms（多仓分散） | pinobatch | PD / zlib | 未 vendor |
| 8 | tepples | `tepples/` | christopherpow/nes-test-roms + tepples GitHub | — | PD / zlib | 未 vendor |
| 9 | AWJ | `awj/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 10 | natt | `natt/` | forums.nesdev.org + mediafire（老链） | web.archive.org | PD | 未 vendor |
| 11 | nk | `nk/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 12 | drag | `drag/` | forums.nesdev.org（附件） | — | PD | 未 vendor |
| 13 | TakuikaNinja | `takuikaninja/` | github.com/TakuikaNinja（多仓） | — | GPL / MIT | 未 vendor |
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