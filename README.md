<div align="center">

# Hermes Zero Lab

**A self-hosted AI agent workspace. Zero model credits to start.**

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mike-zentarisystems/hermes-zero-lab?quickstart=1)
[![Validate](https://github.com/mike-zentarisystems/hermes-zero-lab/actions/workflows/validate.yml/badge.svg)](https://github.com/mike-zentarisystems/hermes-zero-lab/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

</div>

Hermes Zero Lab is a reproducible, self-hosted workspace for running [Hermes Agent](https://github.com/NousResearch/hermes-agent) with [OmniRoute](https://github.com/diegosouzapw/OmniRoute) as its OpenAI-compatible inference gateway.

It gives you a working AI agent environment, persistent state, and a guided path from first launch to confident operation, without requiring paid model credits to get started.

> This is a self-hosted workspace, not a promise of unlimited free production hosting. See [What "free" means](#what-free-means) and [LIMITATIONS.md](LIMITATIONS.md).

## What it is

A two-service stack you own and control:

- **Hermes Agent** - the agent runtime: sessions, memory, skills, cron, file tools, and a web dashboard
- **OmniRoute** - the inference gateway: provider connections, routing, cooldowns, fallback, and usage tracking

No separate database, no custom frontend, no Kubernetes. State lives in your workspace and exports cleanly when you outgrow the lab.

```text
Browser
  |
  | private Codespaces port forwarding
  v
Hermes Agent
  |-- Web Dashboard
  |-- Sessions, memory, skills, cron, files
  |-- Tool loop
  |
  | http://omniroute:20128/v1
  v
OmniRoute
  |-- Provider connections
  |-- Routing, cooldowns, fallback, usage
  v
Model provider selected by the operator
```

## Current capabilities

These are shipped and working in the repository today:

| Capability | Status |
|---|---|
| One-command launch in GitHub Codespaces | Shipped |
| Hermes Agent gateway with web dashboard | Shipped |
| OmniRoute inference gateway with dashboard | Shipped |
| Persistent Hermes and OmniRoute state | Shipped |
| Generated dashboard credentials | Shipped |
| Health, model, reset, export, validation commands | Shipped |
| 8-lesson guided curriculum (Zentari Learning Style) | Shipped |
| Extension framework with optional recipes | Shipped |
| Limitations and security guidance | Shipped |
| Community contribution templates | Shipped |

See [STATUS.md](STATUS.md) for the full evidence-backed status.

## Quickstart

### GitHub Codespaces

1. Click **Open in GitHub Codespaces** above.
2. Choose the smallest available machine.
3. When the terminal opens, run:

```bash
make access
make doctor
```

4. In the Codespaces **Ports** panel, keep these ports **Private**:

| Port | Service |
|---:|---|
| 9119 | Hermes Dashboard |
| 20128 | OmniRoute Dashboard |

5. Open OmniRoute and connect one provider that currently offers legitimate free access. A free provider may still require a free account, OAuth, or API key.
6. Test inference:

```bash
make model-test
```

7. Open Hermes with the credentials shown by `make access`.
8. Begin [Lesson 00](lessons/00-what-you-are-building.md).

## What "free" means

The core path is designed for zero direct cost, but it is limited:

- GitHub Codespaces uses the account's included monthly allowance.
- The Codespace stops when idle and is not an always-on server.
- Free providers have quotas, terms, regional restrictions, and outages.
- Some free providers require account verification or an API key.
- Model chat quality does not guarantee Hermes tool-call quality.
- Codespaces, Hermes, OmniRoute, and upstream providers are separate services with separate terms.

Read [LIMITATIONS.md](LIMITATIONS.md) before relying on the workspace.

## Commands

```bash
make start       # start Hermes and OmniRoute
make stop        # stop the application services
make status      # show service state
make access      # show dashboard access information
make doctor      # validate infrastructure and configuration
make model-test  # test OmniRoute inference
make tool-test   # experimental Hermes end-to-end tool test
make export      # create a state backup
make reset       # destructive reset with confirmation
make validate    # run repository checks
```

## Learn the system

The [8-lesson curriculum](LEARNING_LAB.md) takes you from first launch through tools, state management, skills, and a capstone project:

1. [What You Are Building](lessons/00-what-you-are-building.md)
2. [Launch and Inspect](lessons/01-launch-and-inspect.md)
3. [Connect Free Inference](lessons/02-connect-free-inference.md)
4. [First Hermes Session](lessons/03-first-hermes-session.md)
5. [Tools and Execution Boundaries](lessons/04-tools-and-boundaries.md)
6. [State, Memory, and Migration](lessons/05-state-and-memory.md)
7. [Skills and MCP](lessons/06-skills-and-mcp.md)
8. [Capstone](lessons/07-capstone.md)

## Extend it

The core stays lean. Everything beyond Hermes plus OmniRoute is an optional recipe. See [EXTENDING.md](EXTENDING.md) for the extension contract.

Optional paths include providers, skills, MCP servers, Telegram, Tailscale private access, local Docker, and cloud deployment experiments.

## What's next

The [roadmap](ROADMAP.md) tracks planned work in priority order:

- **Provider qualification** - replace anecdotal recommendations with reproducible test evidence
- **Portability** - move the same state between Codespaces, local Docker, and a VM
- **Safer execution** - teach execution boundaries before adding autonomy
- **Skills and messaging** - skill authoring, MCP qualification, Telegram/Slack recipes
- **Instructor edition** - workshop plans, answer keys, troubleshooting guides

## Out of scope

Hermes Zero Lab intentionally does not:

- Provide free unlimited model inference (providers set their own terms)
- Replace the official Hermes Agent or OmniRoute documentation
- Offer managed hosting or uptime guarantees
- Include a custom frontend beyond the built-in dashboards
- Bundle a database beyond what Hermes and OmniRoute manage internally

## Project status

See [STATUS.md](STATUS.md) for the current release status, verification evidence, and what's planned next.

## Contributing

Contributions are welcome, especially reproducible provider tests, model tool-call tests, documentation improvements, failure recovery notes, deployment validation, translations, and accessibility improvements.

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Independence

Hermes Zero Lab is not an official Nous Research or OmniRoute project. Third-party software remains governed by its own repository, license, documentation, and terms.
