execute if score sw.mode state matches ..1 as @e[tag=sw.chests] at @s unless block ~ ~ ~ chest run setblock ~ ~ ~ chest
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.side] at @s run loot insert ~ ~ ~ loot cloud/tnt_side
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.sidemiddle] at @s run loot insert ~ ~ ~ loot cloud/tnt_sidemi
execute if score sw.mode state matches ..1 as @e[tag=sw.chest.middle] at @s run loot insert ~ ~ ~ loot cloud/tnt_middle

execute as @e[tag=sw.text.chest] at @s run function minecraft:cloud/chests/text
