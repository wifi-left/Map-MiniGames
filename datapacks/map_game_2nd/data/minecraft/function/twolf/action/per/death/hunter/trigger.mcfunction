##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add wolf.deathcount board 1

function minecraft:twolf/events/job/hunter
tag @a remove wolf.acting
scoreboard players operation wolf.save.time board = wolf.time board
scoreboard players operation wolf.save.ttime board = wolf.ttime board
execute unless score wolf.event board matches 12 run scoreboard players operation wolf.save.event board = wolf.event board
scoreboard players set wolf.event board 12
tag @s add wolf.acting
scoreboard players set wolf.ttime board -1
scoreboard players set wolf.time board 60
function twolf/action/special_day_choose
function twolf/action/per/tpback_real
execute as @a[tag=wolf.acting] at @s run function twolf/items/hunter
schedule clear #wolffunctions

