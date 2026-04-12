# ============================================================
# repo-status.ps1
# Shows git status for root repo + all managed child repos.
# Also shows sia-core status (read-only — for awareness only).
# ============================================================

$ErrorActionPreference = "Stop"

$rootDir = $PSScriptRoot

# All repos to inspect (sia-core shown for awareness, marked read-only)
$repos = @(
    @{ Name = "root (SIA-Project)"; Path = $rootDir;                          ReadOnly = $false },
    @{ Name = "sia-docs";           Path = Join-Path $rootDir "sia-docs";     ReadOnly = $false },
    @{ Name = "sia-research";       Path = Join-Path $rootDir "sia-research"; ReadOnly = $false },
    @{ Name = "sia-chats";          Path = Join-Path $rootDir "sia-chats";    ReadOnly = $false },
    @{ Name = "sia-core (manual)";  Path = Join-Path $rootDir "sia-core";     ReadOnly = $true  }
)

Write-Host ""
Write-Host "===== REPO STATUS ==================================" -ForegroundColor Cyan
Write-Host ""

foreach ($repo in $repos) {
    $label = if ($repo.ReadOnly) { "$($repo.Name) [MANUAL — not bulk synced]" } else { $repo.Name }
    Write-Host "-- [$label] -----------------------------------------" -ForegroundColor $(if ($repo.ReadOnly) { "Yellow" } else { "Cyan" })

    if (-not (Test-Path $repo.Path)) {
        Write-Host "   NOT FOUND: $($repo.Path)" -ForegroundColor Red
        Write-Host ""
        continue
    }

    if (-not (Test-Path (Join-Path $repo.Path ".git"))) {
        Write-Host "   Not a git repository." -ForegroundColor DarkGray
        Write-Host ""
        continue
    }

    Push-Location $repo.Path
    try {
        # Current branch
        $branch = git rev-parse --abbrev-ref HEAD 2>&1
        Write-Host "   Branch : $branch" -ForegroundColor White

        # Remote info
        $remote = git remote -v 2>&1 | Select-Object -First 1
        if ($remote) {
            Write-Host "   Remote : $remote" -ForegroundColor DarkGray
        } else {
            Write-Host "   Remote : (none configured)" -ForegroundColor DarkGray
        }

        # Working tree status
        $statusOutput = git status --short 2>&1
        if ($statusOutput) {
            Write-Host "   Status : DIRTY" -ForegroundColor Red
            $statusOutput | ForEach-Object { Write-Host "     $_" -ForegroundColor Red }
        } else {
            Write-Host "   Status : Clean" -ForegroundColor Green
        }

        # Commits ahead/behind remote (only if remote exists)
        if ($remote) {
            $ahead  = git rev-list --count "@{u}..HEAD" 2>$null
            $behind = git rev-list --count "HEAD..@{u}" 2>$null
            if ($null -ne $ahead -and $null -ne $behind) {
                Write-Host "   Sync   : $ahead ahead, $behind behind remote" -ForegroundColor White
            }
        }
    } catch {
        Write-Host "   ERROR reading status: $_" -ForegroundColor Red
    } finally {
        Pop-Location
    }

    Write-Host ""
}

Write-Host "===== STATUS COMPLETE ==============================" -ForegroundColor Cyan
Write-Host ""
