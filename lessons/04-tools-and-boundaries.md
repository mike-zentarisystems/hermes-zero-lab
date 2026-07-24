# Lesson 04: Tools and Execution Boundaries

## What this is

The difference between model text and agent actions.

## Why it matters

Tool access creates value and risk. The key question is what the agent can change and where.

## Build it

Ask Hermes to create `/opt/data/workspace/lesson-04.txt`, read it back, and report its SHA-256 hash.

## Check it

Verify independently with `docker compose exec -T hermes sh -lc 'cat /opt/data/workspace/lesson-04.txt && sha256sum /opt/data/workspace/lesson-04.txt'`.

## Break it

Ask Hermes to write under `/opt/hermes`, which is not the learner workspace.

## Fix it

Use `/opt/data/workspace` for mutable lab artifacts.

## Keep it

Run `make tool-test` and record the provider and model because tool quality is model-sensitive.
