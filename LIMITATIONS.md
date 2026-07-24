# Limitations

Hermes Zero Lab is intentionally small, free to start, and easy to reset. Those choices create real constraints.

## Codespaces

- Included usage is limited by the learner's GitHub plan.
- A two-core Codespace consumes two core-hours per wall-clock hour.
- The environment stops after its idle timeout.
- Hermes cron jobs, Telegram, and continuous gateways stop with it.
- Deleting the Codespace deletes state that was not exported.
- The smallest machine is suitable for learning, not heavy concurrency or browser automation.

## OmniRoute

- OmniRoute is a gateway, not a guaranteed source of unlimited inference.
- `auto` can only use connected and healthy providers.
- Free tiers, model catalogs, terms, and rate limits change.
- Most practical free providers still require an account, OAuth, or API key.
- A provider can work for chat and still fail Hermes tool calling.

## Hermes

- Hermes can read and write files and execute terminal tools inside its allowed environment.
- The beginner lab is not a hardened multi-tenant system.
- Tool-loop hard stops reduce risk but do not eliminate it.
- Browser automation, paid tool gateways, image generation, and speech are outside the free core.
- Some auxiliary features may require a separate compatible model.

## Security and privacy

- Prompts and responses are sent to the upstream provider selected by OmniRoute.
- Do not use confidential client data, production secrets, regulated data, or private source code.
- Keep Codespaces forwarded ports Private.
- Do not mount the Docker socket into Hermes.
- Export archives contain credentials and must not be committed.

## Reliability

There is no service-level agreement. Upstream image changes, provider changes, rate limits, free-tier changes, and architecture changes can break the lab.

## Appropriate uses

- Learning Hermes
- Testing free routes
- Writing skills
- Controlled file and terminal exercises
- Demonstrations
- Community compatibility testing

## Inappropriate uses

- 24/7 production service
- Multiple untrusted users
- Sensitive workloads
- Guaranteed availability
- High-frequency automation
- Heavy browser or repository workloads

Move beyond the free lab when you need predictable uptime, model quality, backups, monitoring, stronger isolation, or support commitments.
