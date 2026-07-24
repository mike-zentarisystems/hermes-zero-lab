SHELL := /usr/bin/env bash

.PHONY: start stop status access doctor model-test tool-test export reset validate

start:
	bash scripts/start.sh

stop:
	docker compose stop hermes omniroute

status:
	docker compose ps

access:
	bash scripts/show-access.sh

doctor:
	bash scripts/doctor.sh

model-test:
	bash tests/model-test.sh

tool-test:
	bash tests/tool-call-test.sh

export:
	bash scripts/export-data.sh

reset:
	bash scripts/reset.sh

validate:
	bash tests/validate-repo.sh
