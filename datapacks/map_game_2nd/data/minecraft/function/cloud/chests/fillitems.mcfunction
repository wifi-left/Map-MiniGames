##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[tag=sw.chests] at @s unless block ~ ~ ~ chest run setblock ~ ~ ~ chest

# NORMAL MODE
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 4 as @e[tag=sw.chest.side] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/normal/side"}
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 4 as @e[tag=sw.chest.sidemiddle] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/normal/sidemi"}
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 4 as @e[tag=sw.chest.middle] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/normal/middle"}

# TNT MODE
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.side] at @s run loot insert ~ ~ ~ loot cloud/tnt/tnt_side
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.sidemiddle] at @s run loot insert ~ ~ ~ loot cloud/tnt/tnt_sidemi
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.middle] at @s run loot insert ~ ~ ~ loot cloud/tnt/tnt_middle

# HUNGER MODE
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 2 as @e[tag=sw.chest.side] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/hunger/side"}
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 2 as @e[tag=sw.chest.sidemiddle] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/hunger/sidemi"}
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 2 as @e[tag=sw.chest.middle] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/hunger/middle"}

# POTION MODE
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 3 as @e[tag=sw.chest.side] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/potion/side"}
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 3 as @e[tag=sw.chest.sidemiddle] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/potion/sidemi"}
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score sw.mode state matches 3 as @e[tag=sw.chest.middle] at @s run data merge block ~ ~ ~ {Items:[],LootTable:"minecraft:cloud/potion/middle"}

execute as @e[tag=sw.text.chest] at @s run function minecraft:cloud/chests/text

