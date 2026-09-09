##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s quickplay matches 1 run scoreboard players set quickplay.showmode temp 1
execute if score @s quickplay matches 1 run function minecraft:lobby/quickplay/quickplay_lists
execute if score @s quickplay matches -1 run function minecraft:lobby/quickplay_lists_dialog
execute if score @s quickplay matches 2.. store result storage minecraft:temp quickplay.run.id int 1 run scoreboard players get @s quickplay
execute if score @s quickplay matches 2.. run function minecraft:lobby/quickplay/quickjoin with storage minecraft:temp quickplay.run

execute if score @s quickplay matches 1.. run scoreboard players reset @s quickplay
