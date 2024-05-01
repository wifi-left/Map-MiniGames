##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 1 run tag @s add wolf.acting
execute as @a[tag=wolf.acting] at @s run function twolf/items/cupid2
scoreboard players set wolf.event board 2

