# Security Policy

Hermes Zero Lab combines software that can call models, write files, and execute terminal tools.

## Safe defaults

- Codespaces ports are Private.
- Host bindings use localhost.
- Hermes credentials are generated during initialization.
- Hermes does not receive the Docker socket.
- Persistent state is excluded from Git.
- Tool-loop hard stops are enabled.

## Rules

- Do not enter production secrets or confidential data.
- Do not make forwarded ports Public.
- Do not mount the Docker socket or sensitive host folders into Hermes.
- Review commands before expanding permissions.
- Export state before destructive experiments.

Report integration vulnerabilities privately through GitHub's private vulnerability reporting when available. Report upstream Hermes or OmniRoute vulnerabilities through their official security processes.
