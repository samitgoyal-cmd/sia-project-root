# ============================================================
# push-all.ps1
# Pushes already-committed changes for root repo + managed child repos.
# Does NOT auto-commit anything — you must commit manually first.
# sia-core is intentionally EXCLUDED — manage it manually.
# ============================================================

$ErrorActionPreference = "Stop"

$rootDir = $PSScriptRoot

# Repos to push: root + managed children (sia-core excluded)
$repos = @(
    @{ Name = "root (SIA-Project)"; Path = $rootDir },
    @{ Name = "sia-docs";           Path = Join-Path $rootDir "sia-docs" },
    @{ Name = "sia-research";       Path = Join-Path $rootDir "sia-research" },
    @{ Name = "sia-chats";          Path = Join-Path $rootDir "sia-chats" }
)

Write-Host ""
Write-Host "===== PUSH-ALL =====================================" -ForegroundColor Cyan
Write-Host "  sia-core is SKIPPED — manage it manually." -ForegroundColor Yellow
Write-Host "  Only repos with clean, committed state will push." -ForegroundColor Yellow
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host ""

foreach ($repo in $repos) {
    Write-Host "-- [$($repo.Name)] -----------------------------------------" -ForegroundColor Cyan

    if (-not (Test-Path $repo.Path)) {
        Write-Host "   ERROR: Directory not found: $($repo.Path)" -ForegroundColor Red
        Write-Host ""
        continue
    }

    if (-not (Test-Path (Join-Path $repo.Path ".git"))) {
        Write-Host "   SKIP: Not a git repository." -ForegroundColor Yellow
        Write-Host ""
        continue
    }

    Push-Location $repo.Path
    try {
        $remote = git remote 2>&1
        if (-not $remote) {
            Write-Host "   SKIP: No remote configured." -ForegroundColor Yellow
            Pop-Location
            Write-Host ""
            continue
        }

        # Check for uncommitted changes
        $statusOutput = git status --porcelain 2>&1
        if ($statusOutput) {
            Write-Host "   SKIP: Uncommitted changes present — commit manually before pushing." -ForegroundColor Yellow
            Write-Host "   Dirty files:" -ForegroundColor Yellow
            $statusOutput | ForEach-Object { Write-Host "     $_" -ForegroundColor Yellow }
        } else {
            Write-Host "   Pushing..." -ForegroundColor White
            git push
            Write-Host "   Done." -ForegroundColor Green
        }
    } catch {
        Write-Host "   ERROR during push: $_" -ForegroundColor Red
    } finally {
        Pop-Location
    }

    Write-Host ""
}

Write-Host "===== PUSH-ALL COMPLETE ============================" -ForegroundColor Cyan
Write-Host ""
