# SIA-Project — Root Control Repository

This is the **workspace-level control repository** for the SIA project.  
It tracks shared helper files, workspace configuration, and continuity context across machines — not source code.

---

## What this repo tracks

| Path | Purpose |
|------|---------|
| `codex-control/` | AI continuity files, codex state, context hand-offs |
| `SAMITSPROMPT/` | Prompt library and working instructions |
| `pull-all.ps1` | Pull latest for all managed repos |
| `push-all.ps1` | Push committed changes for all managed repos |
| `repo-status.ps1` | Show status of all repos at a glance |
| `README.md` | This file |

## What this repo intentionally ignores

| Path | Reason |
|------|--------|
| `SIA-Exchange/` | Local-only exchange folder — not synced via root repo, not committed here |
| `sia-core/` | Has its own git repo; excluded from root tracking |
| `SIA-DOCS/` | Has its own git repo; excluded from root tracking |
| `sia-research/` | Has its own git repo; excluded from root tracking |
| `sia-chats/` | Has its own git repo; excluded from root tracking |

---

## Child repositories (separately managed)

The following directories are **separate git repositories** and are excluded from root-level tracking via `.gitignore`:

| Repo | Managed by |
|------|-----------|
| `sia-core/` | **Manual only** — excluded from bulk sync |
| `SIA-DOCS/` | `pull-all.ps1` / `push-all.ps1` |
| `sia-research/` | `pull-all.ps1` / `push-all.ps1` |
| `sia-chats/` | `pull-all.ps1` / `push-all.ps1` |

Each child repo has its own `.git` history, remotes, and branching strategy.  
Do **not** nest them as submodules — they remain fully independent.

---

## sia-core — intentionally excluded from bulk sync

`sia-core` is the primary source-code repository. It requires deliberate, individual commits and pushes. It is **never touched** by `pull-all.ps1` or `push-all.ps1` to prevent accidental overwrites or premature pushes.

Manage `sia-core` manually:
```powershell
cd sia-core
git status
git add ...
git commit -m "..."
git push
```

---

## Bulk sync scripts

### `repo-status.ps1`
Shows branch, remote, dirty files, and ahead/behind count for all repos (including `sia-core` as read-only awareness).

```powershell
./repo-status.ps1
```

### `pull-all.ps1`
Pulls latest from remote for root + `sia-docs`, `sia-research`, `sia-chats`. Skips repos with no remote.

```powershell
./pull-all.ps1
```

### `push-all.ps1`
Pushes already-committed changes for root + `sia-docs`, `sia-research`, `sia-chats`.  
**Does not auto-commit.** Skips any repo with uncommitted changes and shows what is dirty.

```powershell
./push-all.ps1
```

---

## Setup: adding a remote

This root repo has no remote yet. To sync across laptops, create a GitHub (or other) repo and run:

```powershell
git remote add origin https://github.com/YOUR_USERNAME/sia-project-root.git
git branch -M main
git add .
git commit -m "chore: initial root control repo setup"
git push -u origin main
```

---

*Root repo initialized: 2026-04-12*
