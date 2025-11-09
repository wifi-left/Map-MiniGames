execute if entity @s[y_rotation=-45..45] if block ~ ~1 ~1 #leaves run effect give @s jump_boost 1 1 true
execute if entity @s[y_rotation=-135..-45] if block ~1 ~1 ~ #leaves run effect give @s jump_boost 1 1 true
execute if entity @s[y_rotation=135..-135] if block ~ ~1 ~-1 #leaves run effect give @s jump_boost 1 1 true
execute if entity @s[y_rotation=45..135] if block ~-1 ~1 ~ #leaves run effect give @s jump_boost 1 1 true

execute if entity @s[y_rotation=-45..45] if block ~ ~ ~1 #leaves if block ~ ~2 ~1 #leaves run effect give @s jump_boost 1 2 true
execute if entity @s[y_rotation=-135..-45] if block ~1 ~ ~ #leaves if block ~1 ~2 ~ #leaves run effect give @s jump_boost 1 2 true
execute if entity @s[y_rotation=135..-135] if block ~ ~ ~-1 #leaves if block ~ ~2 ~-1 #leaves run effect give @s jump_boost 1 2 true
execute if entity @s[y_rotation=45..135] if block ~-1 ~ ~ #leaves if block ~-1 ~2 ~ #leaves run effect give @s jump_boost 1 2 true


execute if block ~ ~-1 ~ #leaves if block ~1 ~1 ~ #leaves if block ~-1 ~1 ~ #leaves if block ~ ~1 ~1 #leaves if block ~ ~1 ~-1 #leaves run effect give @s jump_boost 1 1 true