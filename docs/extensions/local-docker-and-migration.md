# Extension: Local Docker and Migration

Requirements: Docker, Docker Compose v2, Git, and preferably at least 4 GB of available RAM.

```bash
git clone https://github.com/mike-zentarisystems/hermes-zero-lab.git
cd hermes-zero-lab
make start
make access
make doctor
```

Use `make export` in the source environment. Transfer the archive securely, stop the target stack, extract it at the repository root, then run `make start`, `make doctor`, and `make model-test`.

Never run two Hermes gateways against the same copied state as if both are authoritative.
