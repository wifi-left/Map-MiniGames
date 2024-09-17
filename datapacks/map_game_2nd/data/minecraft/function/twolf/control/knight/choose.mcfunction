##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function twolf/action/special_day_choose
# 骑士
function twolf/action/per/tpback_real
function twolf/items/knight
scoreboard players set wolf.time board 60
scoreboard players set wolf.event board 11
tag @s add wolf.acting
execute as @a[tag=wolf.tip] run function twolf/tips/knight
tellraw @a[tag=wolf.tip] ["\n\u00a7a\u00a7l「骑士」\u00a76发动了技能。\n"]
function minecraft:twolf/action/per/tag/knight
