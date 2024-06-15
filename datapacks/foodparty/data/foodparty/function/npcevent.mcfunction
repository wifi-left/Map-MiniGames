##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if block ~ ~-2 ~ command_block[facing=south] run data modify entity @s Motion[2] set value 0.13

execute if block ~ ~-2 ~ command_block[facing=south] at @s run tp @s ~ ~ ~ 0 ~

execute if block ~ ~-2 ~ command_block[facing=north] run data modify entity @s Motion[2] set value -0.13

execute if block ~ ~-2 ~ command_block[facing=north] at @s run tp @s ~ ~ ~ 180 ~

execute if block ~ ~-2 ~ command_block[facing=east] run data modify entity @s Motion[0] set value 0.13

execute if block ~ ~-2 ~ command_block[facing=east] at @s run tp @s ~ ~ ~ -90 ~

execute if block ~ ~-2 ~ command_block[facing=west] run data modify entity @s Motion[0] set value -0.13

execute if block ~ ~-2 ~ command_block[facing=west] at @s run tp @s ~ ~ ~ 90 ~
execute if block ~ ~-2 ~ command_block run tag @s add npc.moving
execute if block ~ ~-2 ~ lime_terracotta run tag @s add npc.moving
execute as @s[tag=npc.full] if block ~ ~-2 ~ yellow_terracotta at @s run data modify entity @s Motion[2] set value 0.13
execute as @s[tag=npc.full] if block ~ ~-2 ~ lime_terracotta at @s run tp @s ~ ~ ~ 180 ~
execute as @s[tag=npc.full] if block ~ ~-2 ~ lime_terracotta run data modify entity @s Motion[2] set value -0.13
execute as @s[tag=npc.hungry] if block ~ ~-2 ~ lime_terracotta run data modify entity @s Motion[2] set value 0.13
execute as @s[tag=npc.hungry] if block ~ ~-2 ~ lime_terracotta at @s run tp @s ~ ~ ~ 0 ~
tag @s remove npc.moving

execute as @s[tag=!npc.moving] run data merge entity @s {NoAI:0b}

execute as @s[tag=npc.moving] run data merge entity @s {NoAI:1b}
