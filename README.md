# f11qa-rom-mirror

> **OWNER（@Laffinty）主动收录**的第三方 NES 测试 ROM 1:1 mirror，服务于 FCEUX11/F11QA。
> 上游作者（blargg / kevtris / pinobatch / 等）**不是** contributor；本仓库与上游无隶属 / 代理 / 赞助关系。
> 关联：[FCEUX11 v1.8 F11QA 构建计划 §四](https://github.com/Laffinty/FCEUX11/blob/wip1.8/docs/plans/FCEUX11-v1.8_F11QA-构建计划.md)

---

## 收录范围

仅 PD / zlib / GPL（-only / -or-later）；上游需**显式 license 声明 + 公开可访问**。

**不接受**：
- 外部 PR vendor 新 ROM（OWNER 必须亲自验证上游 license）
- ROM 字节的任何修改（1:1 镜像为唯一形态）

---

## 目录

按上游作者分组：

```
blargg/  nestest/  bisqwit/  holy_mapperel/  240pee/  quietust/
rainwarrior/  tepples/  awj/  natt/  nk/  drag/  takuikaninja/
sour/  3gengames/  rahsennor/  lidnariq/  nesstress/  bntest/
31test/  damianyerrick/volume_tests/
```

完整 22 套件映射见 `docs/构建计划.md`。

---

## 收录动作

1. 上游 fetch + SHA-256 校验 → `scripts/sync_from_upstream.sh` + `audit_sha256.sh`
2. `LICENSES.md` + `SHA256SUMS.txt` 追加条目
3. `verify_licenses.sh` PASS + CI `f11qa-rom-mirror-verify.yml` 二次校验

---

## 法律（短）

- **OWNER 是 ROM custodian，不主张任何上游权利**；上游 license 以**上游声明**为准。
- **24h take-down**：原作者 / rights-holder 开 issue → 删除 + `LICENSES.md` / `SHA256SUMS.txt` 清理 → **不问理由**。
- 走 GitHub DMCA：<https://github.com/contact/dmca>。
- 上游姓名 / handle 引用属合理使用，**不**暗示合作。

---

## License

- 本仓库 metadata：CC0-1.0（见 `LICENSE`）
- 各 ROM：见 `LICENSES.md`