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

## 未来手工 vendor 清单（剩余套件）

下列套件在沙箱内拿不到 .nes 实体（`forums.nesdev.org` Cloudflare 拦；web.archive.org 仅缓存 HTML 帖子，附件 `download/file.php` 无 .nes 二进制）。

**OWNER 手工流程**：浏览器打开下表"thread 链接" → 在帖内找 `.nes` 附件 → 另存为到目标子目录 → 走 §维护工具 5 步流程。

| 套件 | 子目录 | thread | attachment id | 作者 | 备注 |
|---|---|---|---|---|---|
| ~~serom~~ | ~~`lidnariq/serom/serom.nes`~~ | https://forums.nesdev.org/viewtopic.php?f=3&t=9350 | id=3753 | lidnariq | ✅ Phase D batch 5 via wayback |
| ~~oamtest3~~ | ~~`lidnariq/oamtest3/oamtest3.nes`~~ | https://forums.nesdev.org/viewtopic.php?t=6424 | id=1537 | lidnariq | ✅ Phase D batch 5 via wayback |
| ~~vaus~~ | ~~`lidnariq/vaus/vaus.nes`~~ | https://forums.nesdev.org/viewtopic.php?t=23801 | id=21972 | lidnariq | ✅ Phase D batch 5 via wayback |
| ~~characterize-vs~~ | ~~`lidnariq/characterize-vs/characterize-vs.nes`~~ | https://forums.nesdev.org/viewtopic.php?t=10276 | id=1415 | lidnariq | ✅ Phase D batch 5 via wayback |
| raw pack2 | `lidnariq/raw_pack2/` | （未定位，需查 forum） | — | lidnariq | raw 32-bit report；可能为多文件 zip |
| ~~dma_sync_test_v2~~ | ~~`rahsennor/dma_sync_test_v2/dma_sync_test_v2.nes`~~ | https://forums.nesdev.org/viewtopic.php?t=14319 | id=5905 | Rahsennor | ✅ Phase D batch 5 via wayback |
| ~~apu_phase_reset~~ | ~~`rahsennor/apu_phase_reset/apu_phase_reset.nes`~~ | https://forums.nesdev.org/viewtopic.php?t=15346 | id=7496 | Rahsennor | ✅ Phase D batch 5 via wayback |
| ~~mmc3irqtest (2/5)~~ | `nk/mmc3irqtest/mmc3irqtest.nes` + `mmc3irqtest_v2.nes` | https://forums.nesdev.org/viewtopic.php?p=261236 | id=19288, 19311 | N-K | ✅ Phase D batch 6 via wayback (2/5 变体); 余 3 个变体 (id=19286, 19287, 19306) wayback 仅 PNG |
| vrc6test | `natt/vrc6test/vrc6test.nes` | https://forums.nesdev.org/viewtopic.php?t=11028 OR t=16009 | （wayback 无附件；可能在 zip 内或 post 内联 `vrc6test.zip`） | natt | VRC6 mirroring 测试 |
| ~~bntest (独立)~~ | `bntest/bntest_aorom.nes` | https://forums.nesdev.org/viewtopic.php?p=79826 | id=2253 | tepples | ✅ Phase D batch 5 via wayback |

### rainwarrior 套件（仍暂搁，单独记录）

| 套件 | 子目录 | thread | attachment id | 作者 | 备注 |
|---|---|---|---|---|---|
| ~~bxrom_512k_test~~ | `rainwarrior/bxrom_512k_test/bxrom_512k_test.nes` | https://forums.nesdev.org/viewtopic.php?f=3&t=12085 | id=2247 (binary), id=2248 (source) | rainwarrior | ✅ Phase D batch 5 via wayback |
| ~~mmc5ramsize~~ | `rainwarrior/mmc5ramsize/mmc5ramsize.nes` | https://forums.nesdev.org/viewtopic.php?p=244062 (thread 19466) | id=16392 | rainwarrior | ✅ Phase D batch 5 via wayback |
| n163_soundram + _init | `rainwarrior/n163_soundram/` | https://forums.nesdev.org/viewtopic.php?p=284414 (thread 24277) | id=23582, 23588, 23590, 23592（全部 NO HIT in wayback）| rainwarrior | Namco 163 audio sound RAM |
| ~~mset (3)~~ | `rainwarrior/mset/mset.nes` + `mset6x.nes` | https://forums.nesdev.org/viewtopic.php?p=231608 (thread 18272) | id=14627 (mset), id=14642 (mset6x), id=14643 (mict 同帖) | rainwarrior | ✅ Phase D batch 6 via wayback |
| ~~mict~~ | `rainwarrior/mict/mict.nes` | 同 mset 帖子（thread 18272）| id=14643 | rainwarrior | ✅ Phase D batch 6 via wayback |
| color_test | `rainwarrior/color_test/color_test.nes` | https://forums.nesdev.org/viewtopic.php?p=155593 (thread 13264) | id=13185 = palette_pal.nes (wiki 标签与原帖上传名不一致) | rainwarrior | 单色全屏测试；id=13185 字节 == palette_pal.nes，**未独立 vendor** |
| ~~palette (3)~~ | `rainwarrior/palette/palette.nes` + `palette_alt.nes` + `palette_pal.nes` | 同 color_test 帖子 | id=4043, id=13183 (zip with palette.nes + palette_pal.nes) | rainwarrior | ✅ Phase D batch 6 via wayback |
| ~~ram_retain~~ | `rainwarrior/ram_retain/ram_retain.nes` | https://forums.nesdev.org/viewtopic.php?t=13334 | id=4168 (zip) | rainwarrior | ✅ Phase D batch 6 via wayback |
| 31_test | `rainwarrior/31_test/` | https://forums.nesdev.org/viewtopic.php?f=3&t=13120 | （thread ID 已知，attachment 待查）| rainwarrior | mapper 31，NES 2.0 多 header 变体 |
| NES 2.0 submapper 4 项 | `rainwarrior/submapper/` | （未定位，需查 forum） | — | rainwarrior | 2_test / 3_test / 7_test / 34_test（mapper 2/3/7/34） |
| famicom_audio_swap_tests | `rainwarrior/famicom_audio_swap_tests/` | https://rainwarrior.ca/projects/nes/famicom_audio_swap_tests.zip | — | rainwarrior | 沙箱可达 zip (101KB)，可绕过论坛 |

### TakuikaNinja 套件（仍暂搁，等 LICENSE）

4 个 .fds 二进制已下载并计算 SHA-256（见 §已下载未 vendor（手清 pending））。
恢复 vendor 只需：联系上游补 LICENSE → 在 LICENSES.md 加 4 条 entries（License 字段填上游选定 license）→ 在 SHA256SUMS.txt 加 4 行 → 在 `scripts/sync_from_upstream.sh` 加 4 个 `fetch_rom` 三行调用 → 跑 verify_licenses + audit_sha256 → commit。

## 单次 vendor 流程（OWNER 浏览器操作）

```
1. 浏览器打开上表"thread 链接"
2. 在帖子内找 .nes（或 .zip 包含 .nes）附件
3. 另存为到目标子目录（路径已在表中"子目录"列给出）
4. 计算 SHA-256：sha256sum.exe <path>（PowerShell: Get-FileHash -Algorithm SHA256 <path>）
5. 打开 LICENSES.md，在对应子目录 section 末尾追加 ### 条目（License / Upstream URL / Upstream Author / Verified By / SHA-256 / Notes）
6. 打开 SHA256SUMS.txt 末尾追加 <sha256>  <path> 行
7. 打开 scripts/sync_from_upstream.sh main() 末尾追加 fetch_rom 三行调用
8. cd <repo>; bash scripts/verify_licenses.sh && bash scripts/audit_sha256.sh；两者 PASS
9. git add <files>; git commit -m "vendor <suite>"; git push
```

每个附件一笔 commit。出错就 rebase --abort 退回上一次 main。