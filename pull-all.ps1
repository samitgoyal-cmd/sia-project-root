# ============================================================
# pull-all.ps1
# Pulls latest changes for root repo + managed child repos.
# sia-core is intentionally EXCLUDED — manage it manually.
# ============================================================

$ErrorActionPreference = "Stop"

$rootDir = $PSScriptRoot

# Repos to pull: root + managed children (sia-core excluded)
$repos = @(
    @{ Name = "root (SIA-Project)"; Path = $rootDir },
    @{ Name = "sia-docs";           Path = Join-Path $rootDir "SIA-DOCS" },
    @{ Name = "sia-research";       Path = Join-Path $rootDir "sia-research" },
    @{ Name = "sia-chats";          Path = Join-Path $rootDir "sia-chats" }
)

Write-Host ""
Write-Host "===== PULL-ALL =====================================" -ForegroundColor Cyan
Write-Host "  sia-core is SKIPPED — manage it manually." -ForegroundColor Yellow
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
        } else {
            Write-Host "   Pulling..." -ForegroundColor White
            git pull
            Write-Host "   Done." -ForegroundColor Green
        }
    } catch {
        Write-Host "   ERROR during pull: $_" -ForegroundColor Red
    } finally {
        Pop-Location
    }

    Write-Host ""
}

Write-Host "===== PULL-ALL COMPLETE ============================" -ForegroundColor Cyan
Write-Host ""
