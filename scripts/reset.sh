#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
cd "$(repo_root)"
if [[ "${1:-}" != "--yes" ]]; then
  echo "This deletes all Hermes and OmniRoute lab state."
  read -r -p "Type RESET to continue: " answer
  [[ "$answer" == "RESET" ]] || exit 0
fi
docker compose down --remove-orphans || true
rm -rf .data .env
bash .devcontainer/initialize.sh
docker compose up -d omniroute hermes
pass "Lab reset complete."
