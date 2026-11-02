#!/usr/bin/env bash
set -euo pipefail

TOOLCHAIN="$(tr -d '\r\n' < lean-toolchain)"
if ! command -v elan >/dev/null 2>&1; then
  curl --proto '=https' --tlsv1.2 -sSf https://elan.lean-lang.org/elan-init.sh | sh -s -- -y --default-toolchain "$TOOLCHAIN"
fi

export PATH="$HOME/.elan/bin:$PATH"
if ! grep -q 'HOME/.elan/bin' "$HOME/.bashrc" 2>/dev/null; then
  echo 'export PATH="$HOME/.elan/bin:$PATH"' >> "$HOME/.bashrc"
fi

lake --version
lean --version
lake exe cache get
lake build
