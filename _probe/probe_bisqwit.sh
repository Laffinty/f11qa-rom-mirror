#!/usr/bin/env bash
cd /d/Project/f11qa-rom-mirror 2>/dev/null || cd "D:/Project/f11qa-rom-mirror"
curl.exe -sL "https://bisqwit.iki.fi/src/nes_tests/" > _probe/bisqwit_root.html
echo "size: $(wc -c < _probe/bisqwit_root.html)"
grep -oE 'href="[^"]+"' _probe/bisqwit_root.html | sort -u