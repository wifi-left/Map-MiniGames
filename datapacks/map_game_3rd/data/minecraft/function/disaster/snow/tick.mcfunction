execute in airworld positioned 139 -60 84 as @a[gamemode=adventure,distance=..2,team=disaster.snow] at @s run function minecraft:disaster/snow/died
execute in airworld as @a[gamemode=adventure,team=disaster.snow] at @s if block ~ ~-1 ~ magma_block run function minecraft:disaster/snow/died

execute in airworld as @a[gamemode=adventure,team=disaster.snow] at @s run kill @e[type=item,distance=..5]

execute in airworld as @e[type=armor_stand,tag=disaster.snow.armor_stand] at @s if block ~ ~-0.5 ~ snow_block run function minecraft:disaster/snow/summon/break_block
execute in airworld as @e[type=armor_stand,tag=disaster.snow.armor_stand] at @s if block ~ ~-1 ~ magma_block run kill @s
execute in airworld as @e[type=armor_stand,tag=disaster.snow.armor_stand] at @s if block ~ ~ ~ bubble_column run kill @s

execute in airworld as @e[type=falling_block,tag=disaster.snow.falling_block] at @s if block ~ ~-1 ~ magma_block run kill @s
execute in airworld as @e[type=falling_block,tag=disaster.snow.falling_block] at @s if block ~ ~-2 ~ magma_block run kill @s
execute in airworld as @e[type=falling_block,tag=disaster.snow.falling_block] at @s if block ~ ~-2 ~ bubble_column run kill @s
execute in airworld as @e[type=falling_block,tag=disaster.snow.falling_block] at @s if block ~ ~-1 ~ bubble_column run kill @s
execute in airworld as @e[type=falling_block,tag=disaster.snow.falling_block] at @s if block ~ ~ ~ bubble_column run kill @s

execute as @a[gamemode=adventure,team=disaster.snow] if items entity @s weapon.mainhand bow run function minecraft:disaster/snow/item_effects/bomb_bow
execute as @a[gamemode=adventure,team=disaster.snow] unless items entity @s weapon.mainhand bow run function minecraft:disaster/snow/item_effects/bomb_bow_clear