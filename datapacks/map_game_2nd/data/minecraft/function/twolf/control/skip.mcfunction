##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set @s LRS_CS -1
tellraw @s ["§c你放弃了操作。"]
clear @s
# scoreboard players set wolf.ttime board 1
execute if score wolf.event board matches 5 run function minecraft:twolf/control/job/wolf/skip
execute if score wolf.event board matches 2..4 run function minecraft:twolf/control/job/general/skip
execute if score wolf.event board matches 6..8 run function minecraft:twolf/control/job/general/skip
execute if score wolf.event board matches 6..8 run function minecraft:twolf/control/job/general/skip
# execute if score wolf.event board matches 9..10 run
execute if score wolf.event board matches 9..10 run function minecraft:twolf/control/day/skip


