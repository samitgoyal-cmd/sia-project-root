# File Ownership Locks

## Purpose

Prevent accidental overlap when multiple Codex or Claude sessions are working in parallel.

## Rule

Before editing a shared file or folder in a parallel workflow, register the lock here.

## Fields

- Lock_ID
- Session_ID
- Path
- Scope
- Reason
- Started_At
- Released_At
- Status

## Active Locks

| Lock_ID | Session_ID | Path | Scope | Reason | Started_At | Released_At | Status |
|---------|------------|------|-------|--------|------------|-------------|--------|
| lock-2026-04-08-process-freeze | codex-2026-04-08-process-freeze | `C:\SIA-Project\SIA-DOCS\07_automation\templates\CODEGEN_PROCESS_DEFINITION_CONTEXT.md`; `C:\SIA-Project\codex-control\10_CURRENT_STATE.md`; `C:\SIA-Project\codex-control\11_ACTIVE_NEXT_STEPS.md`; `C:\SIA-Project\codex-control\20_SESSION_HANDOFF_LOG.md`; `C:\SIA-Project\codex-control\30_PARALLEL_SESSION_REGISTER.md`; `C:\SIA-Project\codex-control\31_FILE_OWNERSHIP_LOCKS.md` | write-doc | Freeze pipeline definition and synchronize continuity state | 2026-04-08 | 2026-04-08 | released |

## Scope Examples

- read-review
- write-doc
- write-template
- write-rulebook
- write-code

## Status Values

- active
- released
