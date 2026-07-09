#!/bin/bash
set -e

# Get the absolute path of the directory containing this script
SCRIPT_DIR="$(realpath .)"

./scripts/build.sh

# Ensure ~/.local/bin exists
mkdir -p "$HOME/.local/bin"

# Add soft links
ln -sf "$SCRIPT_DIR/bin/qism" "$HOME/.local/bin/qism"

echo "Installed QISM."
