#!/usr/bin/env bash
# Release SOP for walk-the-store. Validates metadata (version, category, tags — no
# skill ships without topics), builds the zip + sha256, vendors the skill into the
# marketplace repo, and writes the site manifest. Git commits/tags stay explicit.
set -euo pipefail
cd "$(dirname "$0")"

SKILL=walk-the-store/SKILL.md
MKT=../claude-plugins
SITE=../jeremyperonto.com/walk-the-store

# --- SOP validation: refuse to release without version, category, tags ---
V=$(awk '/^  version:/{print $2; exit}' "$SKILL")
CAT=$(awk '/^  category:/{print $2; exit}' "$SKILL")
TAGS=$(grep -m1 '^  tags:' "$SKILL" || true)
[ -n "$V" ]    || { echo "FAIL: metadata.version missing in $SKILL"; exit 1; }
[ -n "$CAT" ]  || { echo "FAIL: metadata.category missing in $SKILL (topics are SOP)"; exit 1; }
[ -n "$TAGS" ] || { echo "FAIL: metadata.tags missing in $SKILL (topics are SOP)"; exit 1; }
grep -q "## $V" CHANGELOG.md || { echo "FAIL: CHANGELOG.md has no entry for $V"; exit 1; }
echo "SOP checks passed: v$V · $CAT · $TAGS"

# --- Build zip + sha ---
rm -f walk-the-store-skill.zip
zip -qr walk-the-store-skill.zip walk-the-store -x "*.DS_Store"
SHA=$(shasum -a 256 walk-the-store-skill.zip | awk '{print $1}')
echo "zip sha256: $SHA"

# --- Vendor into marketplace repo ---
rm -rf "$MKT/plugins/walk-the-store/skills/walk-the-store"
mkdir -p "$MKT/plugins/walk-the-store/skills"
cp -R walk-the-store "$MKT/plugins/walk-the-store/skills/walk-the-store"

# --- Sync versions into plugin.json + marketplace.json ---
python3 - "$V" "$MKT" << 'PY'
import json, sys
v, mkt = sys.argv[1], sys.argv[2]
for p in [f"{mkt}/plugins/walk-the-store/.claude-plugin/plugin.json", f"{mkt}/.claude-plugin/marketplace.json"]:
    d = json.load(open(p))
    if "plugins" in d:
        for pl in d["plugins"]:
            if pl["name"] == "walk-the-store": pl["version"] = v
    else:
        d["version"] = v
    json.dump(d, open(p, "w"), indent=2)
print("plugin manifests at", v)
PY

# --- Site: zip + latest.json ---
cp walk-the-store-skill.zip "$SITE/walk-the-store-skill.zip"
NOTE=$(awk "/^## $V/{getline; while(\$0 ~ /^-/){print substr(\$0,3); exit}}" CHANGELOG.md)
python3 - "$V" "$SHA" "$NOTE" "$SITE" << 'PY'
import json, sys
v, sha, note, site = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
json.dump({
  "name": "walk-the-store", "version": v, "sha256": sha,
  "zip": "https://jeremyperonto.com/walk-the-store/walk-the-store-skill.zip",
  "changelog": "https://jeremyperonto.com/walk-the-store/#changelog",
  "note": note
}, open(f"{site}/latest.json", "w"), indent=2)
print("latest.json written")
PY

echo ""
echo "Built. Remaining explicit steps:"
echo "  1. git commit here; git tag v$V; git push --tags"
echo "  2. gh release create v$V walk-the-store-skill.zip"
echo "  3. commit+push $MKT (marketplace users update from this)"
echo "  4. commit+push site (zip, latest.json, page changelog)"
