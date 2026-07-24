#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/../scripts/lib.sh"
cd "$(repo_root)"
set -a
source .env
set +a
base="http://127.0.0.1:8642"
curl -fsS --max-time 3 http://hermes:8642/health >/dev/null 2>&1 && base="http://hermes:8642"
payload=$(python3 -c 'import json; print(json.dumps({"model":"hermes","messages":[{"role":"user","content":"Create /opt/data/workspace/zero-lab-tool-test.txt containing exactly HERMES TOOL OK, then read it back."}],"stream":False}))')
curl -sS --max-time 300 "$base/v1/chat/completions" \
  -H "Authorization: Bearer ${API_SERVER_KEY}" \
  -H 'Content-Type: application/json' \
  -d "$payload" >/tmp/hermes-zero-tool-response.json
if docker compose exec -T hermes sh -lc 'test "$(cat /opt/data/workspace/zero-lab-tool-test.txt 2>/dev/null)" = "HERMES TOOL OK"'; then
  pass "Hermes completed the controlled tool exercise."
else
  fail "Expected file was not created. This can be a model tool-call failure."
  cat /tmp/hermes-zero-tool-response.json
  exit 1
fi
