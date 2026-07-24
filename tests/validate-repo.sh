#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/../scripts/lib.sh"
cd "$(repo_root)"
for f in .devcontainer/initialize.sh scripts/*.sh tests/*.sh; do
  bash -n "$f"
done
python3 -c 'import json; json.load(open(".devcontainer/devcontainer.json"))'
python3 -c 'from pathlib import Path; required=["README.md","ROADMAP.md","LEARNING_LAB.md","EXTENDING.md","LIMITATIONS.md","compose.yaml","lessons/00-what-you-are-building.md"]; missing=[p for p in required if not Path(p).exists()]; assert not missing, missing; print("[PASS] Required files exist.")'
if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
  bash .devcontainer/initialize.sh
  docker compose config --quiet
fi
if grep -RInE --exclude-dir=.git --exclude=.env.example '(sk-[A-Za-z0-9]{20,}|AIza[0-9A-Za-z_-]{20,}|ghp_[A-Za-z0-9]{20,})' .; then
  fail "Possible credential pattern found."
  exit 1
fi
pass "Repository validation completed."
