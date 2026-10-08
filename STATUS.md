# Project Status

**Last updated:** 2026-10-07
**Current release:** v0.1.0 (pending tag)

Hermes Zero Lab is an active project with a working core. This page documents what is shipped, what is verified, and what remains.

## Shipped

The following capabilities are implemented in the repository and available to anyone who launches the workspace:

### Core stack
- [x] GitHub Codespaces devcontainer configuration (`.devcontainer/`)
- [x] Two-service Docker Compose stack (`compose.yaml`): Hermes Agent + OmniRoute
- [x] Persistent state directories for both services
- [x] Generated dashboard credentials on first launch
- [x] Private port forwarding guidance (9119 Hermes, 20128 OmniRoute)

### Operations
- [x] `make start` / `make stop` / `make status` - service lifecycle
- [x] `make access` - dashboard credentials and URLs
- [x] `make doctor` - infrastructure and configuration validation
- [x] `make model-test` - OmniRoute inference smoke test (`tests/model-test.sh`)
- [x] `make tool-test` - Hermes end-to-end tool test (`tests/tool-call-test.sh`)
- [x] `make export` - state backup
- [x] `make reset` - destructive reset with confirmation
- [x] `make validate` - repository checks (`tests/validate-repo.sh`)

### Documentation
- [x] 8-lesson guided curriculum (`lessons/`, `LEARNING_LAB.md`)
- [x] Architecture documentation (README)
- [x] Limitations and security guidance (`LIMITATIONS.md`, `SECURITY.md`)
- [x] Extension framework and contract (`EXTENDING.md`)
- [x] Contributing guide (`CONTRIBUTING.md`)

### Automation
- [x] CI validation workflow (`.github/workflows/validate.yml`)

## Verified

Verification status for shipped capabilities:

| Capability | Verification | Evidence |
|---|---|---|
| Repository checks pass | CI workflow | `.github/workflows/validate.yml` badge |
| Compose stack definition | Static validation | `tests/validate-repo.sh` |
| Curriculum completeness | All 8 lessons present | `lessons/` directory |

## Pending verification

These items are planned but not yet completed:

- [ ] Clean-room launch validated from a second GitHub account
- [ ] First verified provider and model recorded with test evidence
- [ ] Screenshots captured from a live deployment
- [ ] Tested image versions pinned
- [ ] `v0.1.0` git tag created

## Planned

See [ROADMAP.md](ROADMAP.md) for the full plan. In priority order:

1. **Provider qualification** - reproducible connectivity, chat, tool-call, and failover tests with compatibility tables
2. **Portability** - same state across Codespaces, local Docker, and VM; Tailscale private access
3. **Safer execution** - Docker terminal backend, prompt-injection lab, threat model, minimal-permissions profiles
4. **Skills and messaging** - skill authoring workshop, MCP qualification, Telegram/Slack recipes
5. **Instructor edition** - workshop plans, answer keys, troubleshooting flowcharts

## Out of scope

- Free unlimited model inference
- Managed hosting or uptime SLAs
- Custom frontend development
- Replacing upstream Hermes Agent or OmniRoute documentation

## Versioning

Releases follow semantic versioning. The `v0.1.0` tag will mark the first stable release once the pending verification items above are complete.
