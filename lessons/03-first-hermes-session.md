# Lesson 03: First Hermes Session

## What this is

The first full request through Hermes, OmniRoute, and the provider.

## Why it matters

A direct OmniRoute test proves inference. A Hermes conversation proves the integration.

## Build it

Run `make access`, open port 9119, sign in, and ask Hermes to explain the request path in five steps.

## Check it

Inspect OmniRoute request logs and confirm that Hermes sent the request through it.

## Break it

Change `.data/hermes/config.yaml` from `auto/coding` to a nonexistent model and restart Hermes.

## Fix it

Restore `auto/coding`, restart Hermes, and retry.

## Keep it

Stop and start the stack, then confirm the session remains because `.data/hermes` is persistent.
