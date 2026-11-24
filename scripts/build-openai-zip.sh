#!/usr/bin/env bash
# Builds the ZIP uploaded at platform.openai.com/plugins (ChatGPT and Codex).
# Only the Codex layout goes in: the root plugin.json (Antigravity) is left out so
# the importer reads .codex-plugin/plugin.json.
#
# The ZIP's .mcp.json points at the ChatGPT entry (https://mcp.sunra.ai/chatgpt),
# not the .mcp.json in this repo: Claude Code and Cursor read the repo's file and
# keep the full server at https://mcp.sunra.ai.
set -euo pipefail

cd "$(dirname "$0")/.."
out="dist/sunra-openai-plugin.zip"
mkdir -p dist
rm -f "$out"

stage="$(mktemp -d)"
trap 'rm -rf "$stage"' EXIT

files=(
  .codex-plugin/plugin.json
  assets/icon.png
  assets/logo.png
  assets/logo-dark.png
  assets/README.md
  LICENSE
  README.md
)
for f in "${files[@]}"; do
  mkdir -p "$stage/$(dirname "$f")"
  cp "$f" "$stage/$f"
done

cat > "$stage/.mcp.json" <<'JSON'
{
  "mcpServers": {
    "sunra": {
      "type": "http",
      "url": "https://mcp.sunra.ai/chatgpt"
    }
  }
}
JSON

(cd "$stage" && zip -X -q "$OLDPWD/$out" .codex-plugin/plugin.json .mcp.json "${files[@]:1}")
echo "$out"
