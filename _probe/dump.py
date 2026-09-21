import json, sys, codecs
d = None
# Auto-detect BOM
with open(sys.argv[1], "rb") as f:
    raw = f.read()
if raw.startswith(codecs.BOM_UTF16_LE):
    d = json.loads(raw.decode("utf-16-le"))
elif raw.startswith(codecs.BOM_UTF8):
    d = json.loads(raw.decode("utf-8-sig"))
else:
    try:
        d = json.loads(raw.decode("utf-8"))
    except UnicodeDecodeError:
        try:
            d = json.loads(raw.decode("utf-16-le"))
        except UnicodeDecodeError:
            print(f"failed to parse {sys.argv[1]}")
            sys.exit(1)
for e in d:
    print(f"{e['type']:5} {e.get('size',''):>8}  {e['name']}")