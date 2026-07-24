<div align="center">

# Hermes Zero Lab

**Learn, launch, and extend Hermes Agent at zero initial cost.**

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/mike-zentarisystems/hermes-zero-lab?quickstart=1)
[![Validate](https://github.com/mike-zentarisystems/hermes-zero-lab/actions/workflows/validate.yml/badge.svg)](https://github.com/mike-zentarisystems/hermes-zero-lab/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

</div>

Hermes Zero Lab is an independent community learning environment for [Hermes Agent](https://github.com/NousResearch/hermes-agent) and [OmniRoute](https://github.com/diegosouzapw/OmniRoute).

It helps a new learner launch a working lab without buying model credits, then understand what each layer does, where it fails, and how to extend it safely.

> This is a free-to-start classroom, not a promise of unlimited free production hosting.

## What you get

- Hermes Agent gateway and built-in Web Dashboard
- OmniRoute as the OpenAI-compatible inference gateway
- Persistent Hermes and OmniRoute state inside the workspace
- A guided curriculum using the Zentari Learning Style
- Health, model, reset, export, and repository validation commands
- Optional paths for providers, skills, MCP, Telegram, Tailscale, local Docker, and cloud experiments

## Architecture

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
Free upstream model provider selected by the learner
```

The core has two application services. No separate database, custom frontend, Kubernetes cluster, or fifteen-service architecture wearing a trench coat.

## Start in GitHub Codespaces

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

## What “free” means

The core path is designed for zero direct cost, but it is limited:

- GitHub Codespaces uses the account's included monthly allowance.
- The Codespace stops when idle and is not an always-on server.
- Free providers have quotas, terms, regional restrictions, and outages.
- Some free providers require account verification or an API key.
- Model chat quality does not guarantee Hermes tool-call quality.
- Codespaces, Hermes, OmniRoute, and upstream providers are separate services with separate terms.

Read [LIMITATIONS.md](LIMITATIONS.md) before relying on the lab.

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

## Learning path

The complete plan is in [LEARNING_LAB.md](LEARNING_LAB.md).

1. [What You Are Building](lessons/00-what-you-are-building.md)
2. [Launch and Inspect](lessons/01-launch-and-inspect.md)
3. [Connect Free Inference](lessons/02-connect-free-inference.md)
4. [First Hermes Session](lessons/03-first-hermes-session.md)
5. [Tools and Execution Boundaries](lessons/04-tools-and-boundaries.md)
6. [State, Memory, and Migration](lessons/05-state-and-memory.md)
7. [Skills and MCP](lessons/06-skills-and-mcp.md)
8. [Capstone](lessons/07-capstone.md)

## Extend it

See [EXTENDING.md](EXTENDING.md) for the extension contract and optional recipes.

## Project status

Current milestone: **v0.1 - First Flight**

The v0.1 target is:

> A new learner can go from the repository landing page to a successful Hermes conversation and basic tool exercise without spending money or rediscovering the stack from scratch.

See [ROADMAP.md](ROADMAP.md).

## Community

Contributions are welcome, especially reproducible provider tests, model tool-call tests, beginner documentation improvements, failure recovery notes, deployment validation, translations, and accessibility improvements.

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Independence

Hermes Zero Lab is not an official Nous Research or OmniRoute project. Third-party software remains governed by its own repository, license, documentation, and terms.
