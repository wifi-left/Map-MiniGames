##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function twolf/action/special_day_choose
# 白狼
function twolf/action/per/tpback_real
function twolf/items/whitewolf
scoreboard players set wolf.time board 60
tag @s add wolf.acting
scoreboard players set wolf.event board 11
execute as @a[tag=wolf.tip] run function twolf/tips/whitewolf

