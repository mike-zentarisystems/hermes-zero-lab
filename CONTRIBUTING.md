# Contributing

The highest-value contributions are reproducible tests, beginner explanations, failure recovery notes, portability improvements, security improvements, translations, and accessibility work.

## Before a pull request

1. Keep the two-service core intact unless every learner needs the change.
2. Put optional capabilities under `docs/extensions/`.
3. Do not commit keys, tokens, account identifiers, `.env`, `.data`, or export archives.
4. Run:

```bash
make validate
```

## Documentation style

Use the Zentari Learning Style:

- What this is
- Why it matters
- Build it
- Check it
- Break it
- Fix it
- Keep it

Prefer short sections, exact commands, observable results, and honest limitations.

## Compatibility evidence

Include:

- ISO test date
- Hermes version or digest
- OmniRoute version or digest
- Provider and exact model
- Test scenario
- Pass, partial, or fail
- Sanitized evidence
- Known limitations

Use one verification status: Documentation Verified, Lab Verified, or Production Verified.
