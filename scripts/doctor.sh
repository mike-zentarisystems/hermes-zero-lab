#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
cd "$(repo_root)"
failures=0

check() {
  local label="$1"
  shift
  if "$@"; then
    pass "$label"
  else
    fail "$label"
    failures=$((failures + 1))
  fi
}

check "Docker CLI is available." sh -c 'command -v docker >/dev/null'
check "Docker Compose is available." sh -c 'docker compose version >/dev/null 2>&1'
check "Private environment exists." test -f .env
check "Hermes config exists." test -f .data/hermes/config.yaml
check "Compose configuration parses." sh -c 'docker compose config --quiet >/dev/null 2>&1'
check "OmniRoute container is running." sh -c 'docker compose ps --status running --services | grep -qx omniroute'
check "Hermes container is running." sh -c 'docker compose ps --status running --services | grep -qx hermes'
if curl -fsS --max-time 5 http://omniroute:20128/v1/models >/dev/null 2>&1 || curl -fsS --max-time 5 http://127.0.0.1:20128/v1/models >/dev/null 2>&1; then
  pass "OmniRoute API is reachable."
else
  fail "OmniRoute API is reachable."
  failures=$((failures + 1))
fi

printf '\nDoctor summary: %s failure(s).\n' "$failures"
[[ "$failures" -eq 0 ]]
