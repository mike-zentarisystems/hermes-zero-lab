# Lesson 05: State and Migration

## What this is

The two persistent state stores and how to export them.

## Why it matters

Backing up only chat history or only Compose is incomplete.

## Build it

Inspect `.data/hermes` and `.data/omniroute`, then run `make export`.

## Check it

List the archive and confirm it contains `.data` and `.env`.

## Break it

Read `scripts/reset.sh` and explain what would be deleted before running it.

## Fix it

Restore by stopping the stack, extracting the archive at the repository root, then running `make start`, `make doctor`, and `make model-test`.

## Keep it

Store exports securely. They contain credentials and provider state.
