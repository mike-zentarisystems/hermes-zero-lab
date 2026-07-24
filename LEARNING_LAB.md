# Learning Lab Plan

## Purpose

Hermes Zero Lab teaches the system, not just the installation. Learners observe the agent runtime, model gateway, provider, state, tools, failure modes, and extension boundaries.

## Audience

- New Hermes users
- AI automation builders
- Developers
- Infrastructure and operations professionals
- Instructors

No prior Hermes experience is required. Basic GitHub and terminal familiarity helps.

## Zentari Learning Style

Every lesson follows the same sequence:

1. **What this is**
2. **Why it matters**
3. **Build it**
4. **Check it**
5. **Break it**
6. **Fix it**
7. **Keep it**

Errors are part of the lab, not evidence that the learner is the problem.

## Outcomes

A learner should be able to:

- Explain Hermes, OmniRoute, provider, model, and tool boundaries
- Launch and stop the stack
- Locate both state stores
- Connect and test a free provider
- Trace one request end to end
- Complete one controlled tool exercise
- Explain why tool-call quality matters
- Add a simple skill
- Explain what MCP adds
- Export state and select a next hosting tier

## Curriculum

| Lesson | Topic | Time | Evidence |
|---|---|---:|---|
| 00 | Architecture | 10 min | Learner explains the request path |
| 01 | Launch and health | 20 min | `make doctor` succeeds |
| 02 | Free inference | 25 min | `make model-test` succeeds |
| 03 | First Hermes session | 20 min | Session persists across restart |
| 04 | Tools and boundaries | 30 min | File task verified independently |
| 05 | State and migration | 30 min | Backup contains both state stores |
| 06 | Skills and MCP | 45 min | One skill created and tested |
| 07 | Capstone | 60 min | Defined workflow passes its checks |

Estimated total: about four hours.

## Workshop formats

### 60 minutes

Lessons 00, 01, guided provider setup, and first chat.

### Half day

Lessons 00 through 05 plus one controlled failure and backup demonstration.

### Full day

All lessons, provider comparison, skill exercise, and capstone.

## Completion evidence

- Sanitized terminal output
- Health-check results
- Dashboard screenshots with secrets hidden
- Backup archive listing
- Short architecture explanation
- Compatibility result

## Capstone requirements

- Defined input
- Clear success criterion
- At least one Hermes tool
- Recorded provider and model route
- Failure test
- Limitations statement

After the core, choose a track: agent builder, operator, security, compatibility tester, or instructor.
