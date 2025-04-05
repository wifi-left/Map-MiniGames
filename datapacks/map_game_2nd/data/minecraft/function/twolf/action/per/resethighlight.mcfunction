##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s as @e[type=armor_stand,limit=1,sort=nearest,distance=0..1] run data modify entity @s ArmorItems set value [{},{},{id:"leather_chestplate",count:1}]
