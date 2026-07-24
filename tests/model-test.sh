#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/../scripts/lib.sh"
cd "$(repo_root)"
base="http://127.0.0.1:20128"
curl -fsS --max-time 3 http://omniroute:20128/v1/models >/dev/null 2>&1 && base="http://omniroute:20128"
response=$(curl -sS --max-time 120 "$base/v1/chat/completions" \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer hermes-zero-lab-internal' \
  -d '{"model":"auto/coding","messages":[{"role":"user","content":"Reply exactly: HERMES ZERO LAB MODEL OK"}],"temperature":0,"stream":false}')
if printf '%s' "$response" | grep -q 'HERMES ZERO LAB MODEL OK'; then
  pass "OmniRoute inference succeeded."
else
  fail "Inference did not return the expected response."
  printf '%s\n' "$response"
  echo "Check OmniRoute Providers and Health, then retry."
  exit 1
fi
