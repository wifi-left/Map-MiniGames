##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute if score tntwars.map state matches 0.. run scoreboard players remove tntwars.map state 1
function tntwars/mapselector/show

