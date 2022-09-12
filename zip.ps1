$version=Get-Content -Path $env:GITHUB_ENV
Compress-Archive -Path ".." -DestinationPath "./build/MiniGames v$version.zip"