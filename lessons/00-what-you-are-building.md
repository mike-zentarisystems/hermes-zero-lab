# Lesson 00: What You Are Building

## What this is

A two-service agent lab: Hermes manages the agent loop and tools, while OmniRoute routes model requests to an upstream provider.

## Why it matters

Troubleshooting becomes easier when the agent, gateway, provider, model, and tool boundaries are separate in your head.

## Build it

Open `compose.yaml`. Identify the `hermes` and `omniroute` services, the `.data` mounts, and ports 9119, 20128, and 8642.

## Check it

Explain who stores sessions, who stores provider connections, who performs inference, and who executes tools.

## Break it

Imagine OmniRoute is healthy but no provider is connected. The dashboards can load while inference fails.

## Fix it

Connect and validate a provider, then run `make model-test`.

## Keep it

Write one sentence for Hermes, OmniRoute, the provider, the model, and the tool boundary.
