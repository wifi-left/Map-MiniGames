$version=Get-Date -Format 'yyyy.MM.dd (hh:mm:ss)'
$versionZ=Get-Date -Format 'yyyy.MM.dd'
$versionD=Get-Date -Format 'yyyy.MM.dd.hh.mm.ss'

echo "Writing the version number to the Datapack."
"tellraw @s [`"\u00a7aMap Version: \u00a7b\u00a7l$version`"]" | Out-File -Encoding utf8 ".\datapacks\map_main\data\minecraft\functions\version\version.mcfunction"
"say Map Version: $version" | Out-File -Encoding utf8 ".\datapacks\map_main\data\minecraft\functions\version\version1.mcfunction"

echo "Adding the GitHub Environment."
Add-Content -Path $env:GITHUB_ENV -Value "version=${version}"
Add-Content -Path $env:GITHUB_ENV -Value "versionDetail=${versionD}"

echo "Compressing the file."
New-Item "../build" -ItemType Directory
Compress-Archive -Path "." -DestinationPath "../build/MiniGames v$versionZ.zip"
