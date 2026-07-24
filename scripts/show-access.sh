#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
cd "$(repo_root)"
[[ -f .env ]] || bash .devcontainer/initialize.sh
set -a
source .env
set +a
cat <<EOF
Hermes Dashboard
  Port: 9119
  Username: ${HERMES_DASHBOARD_BASIC_AUTH_USERNAME}
  Password: ${HERMES_DASHBOARD_BASIC_AUTH_PASSWORD}

OmniRoute Dashboard
  Port: 20128

Keep Codespaces ports Private.
Local URLs:
  http://127.0.0.1:9119
  http://127.0.0.1:20128
EOF
