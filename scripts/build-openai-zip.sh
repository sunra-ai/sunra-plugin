#!/usr/bin/env bash
# Builds the ZIP uploaded at platform.openai.com/plugins (ChatGPT and Codex).
# Only the Codex layout goes in: the root plugin.json (Antigravity) is left out so
# the importer reads .codex-plugin/plugin.json.
set -euo pipefail

cd "$(dirname "$0")/.."
out="dist/sunra-openai-plugin.zip"
mkdir -p dist
rm -f "$out"
zip -X -q "$out" \
  .codex-plugin/plugin.json \
  .mcp.json \
  assets/icon.png \
  assets/logo.png \
  assets/logo-dark.png \
  assets/README.md \
  LICENSE \
  README.md
echo "$out"
