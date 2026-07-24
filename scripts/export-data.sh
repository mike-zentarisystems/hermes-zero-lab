#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
cd "$(repo_root)"
mkdir -p exports
archive="exports/hermes-zero-lab-$(date -u +%Y%m%dT%H%M%SZ).tar.gz"
docker compose stop hermes omniroute >/dev/null
tar -czf "$archive" .data .env
docker compose up -d omniroute hermes >/dev/null
pass "Backup created: $archive"
warn "The archive contains credentials. Never commit it."
