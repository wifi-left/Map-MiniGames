execute as @a[team=random_parkour,gamemode=adventure] at @s run kill @e[type=item,distance=..10]
execute as @a[team=random_parkour,gamemode=adventure] at @s if block ~ ~-0.5 ~ lapis_block run function minecraft:random_parkour/finish
execute as @a[team=random_parkour,gamemode=adventure] at @s if block ~ ~-0.5 ~ magma_block run function minecraft:random_parkour/failed