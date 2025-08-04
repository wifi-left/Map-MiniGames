##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{vampire:true}}}}]
execute as @a[team=play.endwolf,gamemode=adventure] at @s as @s[y=-64,dy=10] run function minecraft:endless_wolf/died
