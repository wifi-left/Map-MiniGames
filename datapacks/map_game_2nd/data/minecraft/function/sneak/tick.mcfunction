##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score sneak.state state matches 1.. run function minecraft:sneak/testfor
execute as @a[team=sneak,gamemode=adventure] at @s if block ~ ~-1 ~ #minecraft:wool run function minecraft:sneak/died
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{sneak:1}}}}]

execute if score sneak.state state matches 1.. run execute as @a[team=sneak,gamemode=adventure] at @s run kill @e[type=item,distance=..5]
execute if score sneak.state state matches 1 run function minecraft:sneak/color/tick