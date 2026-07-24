# Extending Hermes Zero Lab

The core stays small. Advanced capabilities are added as optional recipes.

## Extension contract

Every extension must answer:

1. What problem does it solve?
2. Why is it not in the core?
3. What service, port, credential, cost, or risk does it add?
4. How is success verified?
5. How is failure diagnosed?
6. How is it removed?
7. Does it preserve Hermes and OmniRoute state?

## Available recipes

- [Providers and models](docs/extensions/providers.md)
- [Skills and MCP](docs/extensions/skills-and-mcp.md)
- [Telegram and private access](docs/extensions/telegram-and-tailscale.md)
- [Local Docker and migration](docs/extensions/local-docker-and-migration.md)
- [Experimental Google free tier](docs/extensions/google-free-experimental.md)

## What should remain optional

- PostgreSQL
- Vector databases
- n8n
- Separate WebUI
- Reverse proxy
- Public ingress
- Kubernetes
- Browser automation
- Multiple agent runtimes
- Full observability stacks

## Verification levels

- **Documentation Verified**: instructions match official documentation.
- **Lab Verified**: completed successfully in Hermes Zero Lab.
- **Production Verified**: operated beyond a short test and includes recovery notes.

Most new recipes should begin as Documentation Verified.
