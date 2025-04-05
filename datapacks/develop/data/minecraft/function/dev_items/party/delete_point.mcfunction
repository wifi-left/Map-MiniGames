##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[limit=1,sort=nearest,distance=..6,type=marker,tag=merchant.point] at @s run function minecraft:dev_items/party/del_point_true
kill @s

