##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp.type board 0
execute store result score tmp.type board run data get entity @e[type=armor_stand,tag=desk.touzi.place,tag=touzi.b,limit=1,sort=nearest] equipment.mainhand.components."minecraft:custom_data".touzi

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data remove entity @s equipment
item replace entity @e[sort=nearest,limit=1,type=item_frame] container.0 with air

