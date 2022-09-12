$version="2.27.3"
New-Item "../build" -ItemType Directory
Compress-Archive -Path ".." -DestinationPath "../build/MiniGames v$version.zip"