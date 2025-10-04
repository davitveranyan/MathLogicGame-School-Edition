$data = @{ username="admin"; password="Administrator"; firstLogin=$true } | ConvertTo-Json
$path = Join-Path $env:USERPROFILE "Documents\MathLogicGameData"
if (-not (Test-Path $path)) { New-Item -ItemType Directory -Path $path -Force | Out-Null }
$out = Join-Path $path "admin.json"
$data | Out-File -FilePath $out -Encoding utf8
Write-Host "Created $out"