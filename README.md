# f11qa-rom-mirror

NES test ROMs, organized by upstream author.

## License compatibility

Each ROM retains its upstream license. Inclusion is limited to ROMs whose
upstream license permits redistribution:

| License | Accepted | Notes |
|---|---|---|
| PD / CC0 | Yes | License ∈ accepted set; `Notes` field documents basis (explicit upstream declaration, *or* community consensus + third-party PD-tagged archive URL) |
| zlib / zlib-like | Yes | License file publicly accessible; attribution preserved |
| GPL-2.0-only / -or-later | Yes | License file + source publicly available upstream |
| GPL-3.0-only / -or-later | Yes | Same as above; "v3 only" / patent clauses reviewed per-case |
| MIT / BSD / Apache | Yes | License file publicly accessible; attribution preserved |
| Proprietary / unknown / missing source | No | — |

Per-ROM details (license, upstream URL, author, SHA-256) are in
`LICENSES.md`; SHA-256 checksums are indexed in `SHA256SUMS.txt`.

## Inclusion policy

- Only test ROMs whose upstream license is in the accepted set above are vendored.
- Each ROM is registered in `LICENSES.md` (per-ROM license, upstream URL, author, SHA-256).
- ROM bytes are vendored 1:1 from upstream — no modifications, no re-encoding, no patching.

## ROM submissions

This repository does **not** accept pull requests that vendor new ROMs.
OWNER vendors ROMs unilaterally after independent license verification.
A single ingestion path keeps the ROM set auditable.

## Rights-holder takedown

If you are a rights-holder (original author, licensee, or other legitimate
claimant) for a vendored ROM and wish it removed:

1. Contact OWNER via the GitHub issue tracker on this repository.
2. OWNER confirms identity (GitHub handle / commit history / email domain match) within 24 hours.
3. The ROM file, its `LICENSES.md` entry, and its `SHA256SUMS.txt` line are removed.
4. Git history is rewritten on explicit request only (`git filter-repo`).
5. OWNER removes unconditionally — no justification is required.

## Maintainer

OWNER: `@Laffinty`. Contact via GitHub issues on this repository.

## Repository layout

```
blargg/          nestest/         bisqwit/        holy_mapperel/
240pee/          quietust/        rainwarrior/    tepples/
awj/             natt/            nk/             drag/
takuikaninja/    sour/            3gengames/      rahsennor/
lidnariq/        nesstress/       bntest/         31test/
damianyerrick/volume_tests/
```

Full upstream mappings: `docs/构建计划.md`.

## License

- Repository metadata: CC0-1.0
- Each ROM: see `LICENSES.md`