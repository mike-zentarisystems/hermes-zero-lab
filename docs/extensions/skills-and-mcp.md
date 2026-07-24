# Extension: Skills and MCP

A skill teaches Hermes a procedure. MCP exposes an external capability.

A skill should define trigger, inputs, ordered process, validation, failure behavior, and output format.

Before adding MCP, document purpose, source, transport, credentials, read and write capabilities, external data flow, prompt-injection exposure, health check, failure behavior, and removal.

Start with a read-only, synthetic-data MCP server. Stop it deliberately and confirm Hermes reports a bounded failure instead of looping.
