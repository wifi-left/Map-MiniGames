scoreboard players set tmp board 0
execute as @a[team=play.zombie,gamemode=adventure] at @s if block ~ ~ ~ minecraft:structure_void run scoreboard players set tmp board 1
execute as @a[team=play.zombie,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:green_terracotta run scoreboard players set tmp board 1
execute as @a[team=play.zombie,gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:green_terracotta run scoreboard players set tmp board 1
execute if score tmp board matches 1 run function zombieever/tasks/find_keys_final