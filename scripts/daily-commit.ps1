# Daily GitHub contribution commit script
# Scheduled: every day at 9:27 AM

$repoPath = "D:\Study\AI_Yardon\GitCode\tech-blog-generator-main"
$logFile = "$repoPath\contributions\daily-log.md"

Set-Location $repoPath

git pull --rebase origin master 2>&1 | Out-Null

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content -Path $logFile -Value "- **$timestamp** — 每日贡献打卡 ✅"
Add-Content -Path $logFile -Value ""

git add contributions/daily-log.md
git commit -m "chore: daily contribution - $(Get-Date -Format 'yyyy-MM-dd')"
git push origin master
