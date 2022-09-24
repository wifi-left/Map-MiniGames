$version=Get-Date -Format 'yyyy.M.d'
$versionD=Get-Date -Format 'yyyy.M.d(h:m:s)'
Add-Content -Path $env:GITHUB_ENV -Value "version=${version}"
Add-Content -Path $env:GITHUB_ENV -Value "versionDetail=${versionD}"

New-Item "../build" -ItemType Directory
Compress-Archive -Path "." -DestinationPath "../build/MiniGames v$version.zip"