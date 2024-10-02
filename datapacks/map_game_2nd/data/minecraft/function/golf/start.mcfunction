##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset * golf.score
scoreboard players reset * golf.nowroundscore

scoreboard objectives setdisplay sidebar.team.dark_red golf.score
# function minecraft:golf/gaming/map_reset
# tag @a[team=golf,gamemode=adventure] add golf.waittoplay
scoreboard players set golf.map board 0
execute if score golf.allmap state matches 2 run scoreboard players operation golf.map board = golf.map state

gamemode spectator @a[team=golf,gamemode=adventure]

kill @e[type=marker,tag=golf.spawn]
execute as @a[team=golf,gamemode=adventure] run function minecraft:golf/gaming/back
bossbar set minecraft:golf name ["\u00a7a游戏开始！"]
tellraw @a[team=golf] ["\u00a76游戏开始！"]

function minecraft:golf/gaming/next_map
scoreboard players set golf.state state 1