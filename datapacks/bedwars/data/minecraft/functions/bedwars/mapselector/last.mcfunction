##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute if score bw.mode board matches 2.. run scoreboard players remove bw.mode board 1
function bedwars/mapselector/show
# function tntwars/mapselector/show
