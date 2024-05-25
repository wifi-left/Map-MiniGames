execute as @e[tag=sw.chests] at @s unless block ~ ~ ~ chest run setblock ~ ~ ~ chest

# TNT MODE
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.side] at @s run loot insert ~ ~ ~ loot cloud/tnt/tnt_side
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.sidemiddle] at @s run loot insert ~ ~ ~ loot cloud/tnt/tnt_sidemi
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.middle] at @s run loot insert ~ ~ ~ loot cloud/tnt/tnt_middle

# HUNGER MODE
execute if score sw.mode state matches 2 as @e[tag=sw.chest.side] at @s run loot insert ~ ~ ~ loot cloud/hunger/side
execute if score sw.mode state matches 2 as @e[tag=sw.chest.sidemiddle] at @s run loot insert ~ ~ ~ loot cloud/hunger/sidemi
execute if score sw.mode state matches 2 as @e[tag=sw.chest.middle] at @s run loot insert ~ ~ ~ loot cloud/hunger/middle

# POTION MODE
execute if score sw.mode state matches 3 as @e[tag=sw.chest.side] at @s run loot insert ~ ~ ~ loot cloud/potion/side
execute if score sw.mode state matches 3 as @e[tag=sw.chest.sidemiddle] at @s run loot insert ~ ~ ~ loot cloud/potion/sidemi
execute if score sw.mode state matches 3 as @e[tag=sw.chest.middle] at @s run loot insert ~ ~ ~ loot cloud/potion/middle

execute as @e[tag=sw.text.chest] at @s run function minecraft:cloud/chests/text
