##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove succeed
execute as @s[tag=blue] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"blue_wool"}
execute as @s[tag=red] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"red_wool"}
execute as @s[tag=green] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"lime_wool"}
execute as @s[tag=yellow] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"yellow_wool"}
execute as @s[tag=!succeed] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"white_wool"}
scoreboard players add @s board 1
execute if score @s board matches 2.. at @s run playsound entity.chicken.egg player @a
execute if score @s board matches 30.. run kill @s
