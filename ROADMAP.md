# Roadmap

## Principles

1. The first successful conversation should not require payment.
2. The core remains Hermes plus OmniRoute.
3. Optional capabilities stay optional recipes.
4. Claims require reproducible evidence or a clear verification status.
5. Documentation explains why, not only what to paste.
6. State must be exportable to a better host later.

## v0.1: First Flight

Goal: launch the lab, connect a legitimate free provider, complete one Hermes conversation, and complete one controlled tool exercise.

- [x] Codespaces configuration
- [x] Two-service Compose stack
- [x] Persistent state directories
- [x] Generated dashboard credentials
- [x] Health, reset, export, and test scripts
- [x] Initial curriculum
- [x] Limitations and security guidance
- [x] Extension framework
- [x] Community templates
- [ ] Validate from a clean second GitHub account
- [ ] Record the first verified provider and model
- [ ] Capture screenshots
- [ ] Pin tested image versions
- [ ] Tag `v0.1.0`

## v0.2: Provider Qualification

Goal: replace anecdotal recommendations with test evidence.

- Provider connectivity test
- Standard chat test
- JSON conformance test
- Single-tool test
- Multi-tool test
- Tool-error recovery test
- Long-context test
- Rate-limit and failover test
- Generated compatibility tables

## v0.3: Portability

Goal: move the same state between Codespaces, local Docker, and a VM.

- Windows, macOS, and Linux validation
- Tailscale private access
- Experimental Google free-tier validation
- Small VPS recipe
- Backup and restore test
- ARM64 and AMD64 notes

## v0.4: Safer execution

Goal: teach execution boundaries before adding autonomy.

- Docker terminal backend
- Read-only and writable workspace examples
- Prompt-injection lab
- Tool-loop failure lab
- Checkpoint and rollback lesson
- Threat model
- Minimal-permissions profiles

## v0.5: Skills, MCP, and messaging

- Skill authoring workshop
- MCP qualification template
- Telegram recipe
- Slack recipe
- Scheduled work recipe
- Community skills gallery

## v0.6: Instructor edition

- 60-minute, half-day, and full-day workshop plans
- Instructor notes
- Learner checkpoints
- Answer keys
- Troubleshooting flowcharts
- Accessibility review

## v1.0: Stable community lab

- Pinned and tested versions
- Automated clean-room launch test
- Migration guide
- Freshness policy for compatibility data
- Supported deployment tiers
- Maintainer process
- Deprecation policy

The default response to a proposed mandatory service should be: make it an optional recipe unless every learner genuinely needs it.
