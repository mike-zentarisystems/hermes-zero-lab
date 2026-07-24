# Lesson 02: Connect Free Inference

## What this is

The step where OmniRoute receives a legitimate free provider connection.

## Why it matters

OmniRoute routes requests, but an upstream provider performs inference and owns the quota and terms.

## Build it

Open port 20128. In OmniRoute Providers, connect a provider that currently offers free access without payment. Complete its free API-key or OAuth flow and run its health test.

## Check it

Run `make model-test` and record the actual provider, model, date, and access method.

## Break it

Disable the provider temporarily and rerun the test.

## Fix it

Re-enable it or connect a second legitimate free provider. Do not create extra accounts to bypass limits.

## Keep it

Submit sanitized compatibility evidence through the provider-test issue template.
