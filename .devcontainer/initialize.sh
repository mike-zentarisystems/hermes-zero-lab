#!/usr/bin/env bash
set -Eeuo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"
mkdir -p .data/hermes .data/omniroute exports
chmod 700 .data .data/hermes .data/omniroute 2>/dev/null || true

random_hex() {
  if command -v openssl >/dev/null 2>&1; then
    openssl rand -hex "$1"
  else
    python3 -c 'import secrets,sys; print(secrets.token_hex(int(sys.argv[1])))' "$1"
  fi
}

if [[ ! -f .env ]]; then
  umask 077
  {
    echo "HERMES_DASHBOARD_BASIC_AUTH_USERNAME=student"
    echo "HERMES_DASHBOARD_BASIC_AUTH_PASSWORD=$(random_hex 12)"
    echo "HERMES_DASHBOARD_BASIC_AUTH_SECRET=$(random_hex 32)"
    echo "API_SERVER_KEY=$(random_hex 32)"
    echo "OMNIROUTE_CLIENT_KEY=hermes-zero-lab-internal"
  } > .env
fi

if [[ ! -f .data/hermes/config.yaml ]]; then
  cp config/hermes/config.yaml .data/hermes/config.yaml
fi

if [[ ! -f .data/hermes/.env ]]; then
  printf '%s\n' 'OPENAI_API_KEY=hermes-zero-lab-internal' > .data/hermes/.env
fi

chmod 600 .env .data/hermes/.env .data/hermes/config.yaml 2>/dev/null || true
