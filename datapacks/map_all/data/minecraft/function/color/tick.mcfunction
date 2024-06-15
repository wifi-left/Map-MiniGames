##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.color,gamemode=adventure] at @s if block ~ ~-1 ~ water run function color/died
execute as @a[team=play.color,gamemode=adventure] at @s if block ~ ~ ~ water run function color/died
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Color:1b}}}}]
