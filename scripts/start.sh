#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
cd "$(repo_root)"
bash .devcontainer/initialize.sh
info "Starting OmniRoute and Hermes..."
docker compose up -d omniroute hermes
docker compose ps
bash scripts/show-access.sh
