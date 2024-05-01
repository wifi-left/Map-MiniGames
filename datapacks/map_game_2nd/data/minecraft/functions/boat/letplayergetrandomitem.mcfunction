##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add boat.sel
execute as @a[team=boat] if score @s park.uuid = @e[tag=boat.sel,limit=1] park.uuid run tag @s add boat.tmp1
execute as @a[tag=boat.tmp1] at @s run function boat/ifgetrandomitem
tag @a remove boat.tmp1
tag @s remove boat.sel
