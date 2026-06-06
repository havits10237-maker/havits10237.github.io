# GitHub 로그인 후 Pages 활성화
# PowerShell: .\setup-github-pages.ps1

$ErrorActionPreference = "Stop"
$repo = "havits10237-maker/havits10237.github.io"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
  Write-Error "GitHub CLI(gh)가 필요합니다: winget install GitHub.cli"
}

gh auth status 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) {
  Write-Host "GitHub 로그인(브라우저)을 진행합니다..." -ForegroundColor Cyan
  Start-Process "https://github.com/login/device"
  gh auth login -h github.com -p https -w
}

Write-Host "GitHub Pages 활성화 중 (gh-pages 브랜치)..." -ForegroundColor Cyan
gh api "repos/$repo/pages" -X POST -f "build_type=legacy" -f "source[branch]=gh-pages" -f "source[path]=/" 2>$null
if ($LASTEXITCODE -ne 0) {
  gh api "repos/$repo/pages" -X PUT -f "build_type=legacy" -f "source[branch]=gh-pages" -f "source[path]=/"
}

Start-Sleep -Seconds 5
try {
  $pages = gh api "repos/$repo/pages" | ConvertFrom-Json
  $url = $pages.html_url
} catch {
  $url = "https://havits10237-maker.github.io/havits10237.github.io/"
}

Write-Host "`n사이트 URL: $url" -ForegroundColor Green
Start-Process $url
