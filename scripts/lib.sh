#!/usr/bin/env bash
info(){ printf '\033[1;34m[INFO]\033[0m %s\n' "$*"; }
pass(){ printf '\033[1;32m[PASS]\033[0m %s\n' "$*"; }
warn(){ printf '\033[1;33m[WARN]\033[0m %s\n' "$*"; }
fail(){ printf '\033[1;31m[FAIL]\033[0m %s\n' "$*" >&2; }
repo_root(){ cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd; }
