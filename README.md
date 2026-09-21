# f11qa-rom-mirror

NES test ROMs, organized by upstream author.

## License compatibility

Each ROM retains its upstream license. Inclusion is limited to ROMs whose
upstream license permits redistribution:

| License | Accepted | Notes |
|---|---|---|
| PD / CC0 | Yes | Upstream must state PD / CC0 explicitly |
| zlib / zlib-like | Yes | License file publicly accessible; attribution preserved |
| GPL-2.0-only / -or-later | Yes | License file + source publicly available upstream |
| GPL-3.0-only / -or-later | Yes | Same as above; "v3 only" / patent clauses reviewed per-case |
| MIT / BSD / Apache | Yes | License file publicly accessible; attribution preserved |
| Proprietary / unknown / missing source | No | — |

Per-ROM details (license, upstream URL, author, SHA-256) are in
`LICENSES.md`; SHA-256 checksums are indexed in `SHA256SUMS.txt`.

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