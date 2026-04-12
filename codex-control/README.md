# Codex Control

## Purpose

This folder is the persistent continuity layer for Codex work inside `C:\SIA-Project`.

It exists so that future Codex sessions can resume from file-based project state instead of depending on chat history.

## How To Use

For any new Codex session, load these files first:

1. `C:\SIA-Project\codex-control\00_PROJECT_IDENTITY.md`
2. `C:\SIA-Project\codex-control\01_WORKSPACE_MAP.md`
3. `C:\SIA-Project\codex-control\10_CURRENT_STATE.md`
4. `C:\SIA-Project\codex-control\11_ACTIVE_NEXT_STEPS.md`
5. `C:\SIA-Project\codex-control\20_SESSION_HANDOFF_LOG.md`

If parallel sessions are running, also load:

6. `C:\SIA-Project\codex-control\30_PARALLEL_SESSION_REGISTER.md`
7. `C:\SIA-Project\codex-control\31_FILE_OWNERSHIP_LOCKS.md`

## Operating Rule

Chat is temporary.
Files are continuity.

## Update Rule

At the end of a meaningful Codex session, update at least:

- `10_CURRENT_STATE.md`
- `11_ACTIVE_NEXT_STEPS.md`
- `20_SESSION_HANDOFF_LOG.md`

If running parallel sessions, also update:

- `30_PARALLEL_SESSION_REGISTER.md`
- `31_FILE_OWNERSHIP_LOCKS.md`
