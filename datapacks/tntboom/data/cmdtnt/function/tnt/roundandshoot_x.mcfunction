##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add tnt.round.x board 1
scoreboard players set tnt.round.y board 0
function cmdtnt:tnt/roundandshoot_y
execute at @s run tp @s ~ ~ ~ ~30 ~
execute if score tnt.round.x board matches ..12 run function cmdtnt:tnt/roundandshoot_x
