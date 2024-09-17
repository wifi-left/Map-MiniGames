##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wolf.tmp board 0
execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run function minecraft:twolf/events/day/toupiao/isme
execute if score wolf.tmp board matches 2.. run tellraw @a[tag=wolf.tip] ["\n\u00a7c出现平票。投票无效。\n"]
execute if score wolf.tmp board matches 1 as @a[tag=wolf.out] run function twolf/action/per/death/leaveaway
tag @a remove wolf.out
