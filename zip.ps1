$version=Get-Date -Format 'yyyy.MM.dd (hh:mm:ss)'
$versionZ=Get-Date -Format 'yyyy.MM.dd'
$versionD=Get-Date -Format 'yyyy.MM.dd.hh.mm.ss'
Add-Content -Path $env:GITHUB_ENV -Value "version=${version}"
Add-Content -Path $env:GITHUB_ENV -Value "versionDetail=${versionD}"

New-Item "../build" -ItemType Directory
Compress-Archive -Path "." -DestinationPath "../build/MiniGames v$versionZ.zip"
