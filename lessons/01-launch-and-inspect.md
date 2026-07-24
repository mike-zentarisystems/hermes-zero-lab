# Lesson 01: Launch and Inspect

## What this is

The infrastructure startup and health-check lesson.

## Why it matters

A model error and a container error can look identical from a chat screen.

## Build it

Run `make start`, `make status`, `make access`, and `make doctor`. Open private ports 9119 and 20128.

## Check it

Both containers should run, Compose should parse, and the OmniRoute API should be reachable.

## Break it

Run `docker compose stop omniroute`, then `make doctor`.

## Fix it

Run `docker compose start omniroute`, wait briefly, and rerun `make doctor`.

## Keep it

Use this diagnostic order: container, port, API, provider, model, tool.
