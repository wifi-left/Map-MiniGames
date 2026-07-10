kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"build_parkour":1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"build_parkour":2}}}}]
execute as @a[gamemode=adventure,team=build_parkour] at @s run kill @e[type=item,distance=..5]
execute if score build_parkour.state state matches 4..5 run function build_parkour/during/player_parkouring
execute if score build_parkour.state state matches 3 run function build_parkour/during/give_item
execute if score build_parkour.state state matches 6 run function build_parkour/during/give_item_timeout

execute if score build_parkour.state state matches 3..6 as @a[gamemode=adventure,team=build_parkour] at @s run function build_parkour/during/give_effect

execute if score build_parkour.state state matches 3 as @e[type=marker,tag=build_parkour.place.trident] at @s run function minecraft:build_parkour/during/place_trident
execute if score build_parkour.state state matches 3 as @e[type=marker,tag=build_parkour.place.end] at @s run function minecraft:build_parkour/during/place_end
execute if score build_parkour.state state matches 6 as @e[type=marker,tag=build_parkour.place.end] at @s run function minecraft:build_parkour/during/place_end
execute if score build_parkour.state state matches 3.. as @e[type=marker,tag=build_parkour.block.trident] at @s unless block ~ ~ ~ prismarine_slab[waterlogged=true] run function minecraft:build_parkour/during/break_trident

execute if score build_parkour.state state matches 3.. as @e[type=marker,tag=build_parkour.block.trident] at @s if block ~ ~ ~ prismarine_slab[waterlogged=true] run function minecraft:build_parkour/during/repair_trident
