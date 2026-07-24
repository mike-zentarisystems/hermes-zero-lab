#!/usr/bin/env bash
set -Eeuo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
chmod +x .devcontainer/initialize.sh scripts/*.sh tests/*.sh
bash scripts/show-access.sh
echo
echo "Next: open port 20128, connect a free provider, run make model-test, then begin Lesson 00."
