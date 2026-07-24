# Extension: Telegram and Tailscale

Telegram adds a mobile channel but only works while the host is running. Use an explicit allowlist or pairing flow and never commit the bot token.

Tailscale is for private access after moving the stack to a local machine or VM. Keep services bound to localhost and use Tailscale Serve where appropriate. Do not use Funnel for a private deployment.

Codespaces already provides private forwarded ports, so neither component belongs in the beginner core.
