tag @s remove succeed
execute as @s[tag=blue] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"blue_wool"}
execute as @s[tag=red] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"red_wool"}
execute as @s[tag=green] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"green_wool"}
execute as @s[tag=yellow] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"yellow_wool"}
execute as @s[tag=!succeed] if score @s board matches 2.. at @s run function minecraft:bedwars/item/eggblock {block:"white_wool"}
execute if score @s board matches 2.. at @s run playsound entity.chicken.egg player @a
execute if score @s board matches 30.. run kill @s