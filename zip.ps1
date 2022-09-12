$version=Get-Content -Path $env:GITHUB_ENV
New-Item "./build"
Compress-Archive -Path ".." -DestinationPath "./build/MiniGames v$version.zip"