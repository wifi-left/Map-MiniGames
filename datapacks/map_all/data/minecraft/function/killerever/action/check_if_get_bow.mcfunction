##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set @s temp 0
execute store result score @s temp run clear @s bow[] 0
execute if score @s temp matches 1.. run clear @s bow[] 1
execute if score @s temp matches 1.. run tellraw @s ["§c你不能捡起这把弓。"]

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute if score @s temp matches 1.. run data merge entity @e[limit=1,sort=nearest,tag=killer.bow,type=armor_stand] {CustomName:["\u00a7a弓\u00a77 - 右键获取"],Marker:0b,CustomNameVisible:1b,Invulnerable:0b,NoAI:1b,Silent:1b,NoGravity:1b,Glowing:1b,Tags:["killer.bow"],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{dtb:1b},"minecraft:unbreakable":{},"minecraft:custom_name":["\u00a7a弓"]}}}}
execute if score @s temp matches 1.. run function minecraft:killerever/action/check_if_get_bow

scoreboard players reset @s temp

