execute if block ~ ~ ~ prismarine_slab[waterlogged=true] run item replace entity @s hotbar.8 with trident[enchantments={riptide:1},unbreakable={},custom_data={build_parkour:1}]
execute unless block ~ ~ ~ prismarine_slab[waterlogged=true] if items entity @s container.* trident run clear @s trident

execute if score build_parkour.state state matches 4..5 if block ~ ~-0.1 ~ red_concrete run function minecraft:build_parkour/died
execute if score build_parkour.state state matches 4..5 if block ~ ~-0.1 ~ black_concrete run function minecraft:build_parkour/died
execute if score build_parkour.state state matches 4..5 if block ~ ~-0.5 ~ pink_wool run function minecraft:build_parkour/win
execute if block ~ ~-1 ~ lime_concrete run effect give @s jump_boost 1 3 true
execute if block ~ ~-1 ~ light_blue_concrete run effect give @s speed 1 1 true
execute if block ~ ~-1 ~ pink_concrete run effect give @s levitation 2 2 true
execute if block ~ ~-1 ~ yellow_concrete run effect give @s blindness 2 2 true
execute if block ~ ~-1 ~ brown_concrete run effect give @s slowness 1 0 true