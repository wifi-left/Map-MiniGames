##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
tellraw @s ["\u00a7a请选择第2个人"]
# 开始倒计时
scoreboard players set wolf.time board 60
scoreboard players set twolf.state state 2
# scoreboard players set wolf.event board 2
function minecraft:twolf/items/selector
