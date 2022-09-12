$version="2.27.3"
Add-Content -Path $env:GITHUB_ENV -Value "version=""${version}"""
New-Item "../build" -ItemType Directory
Compress-Archive -Path ".." -DestinationPath "../build/MiniGames v$version.zip"