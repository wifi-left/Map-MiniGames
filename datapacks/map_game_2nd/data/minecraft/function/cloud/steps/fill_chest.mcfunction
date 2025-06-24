##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[tag=sw.msg] ["§a箱子已经补给！"]
function minecraft:cloud/chests/fillitems
scoreboard players add cloud.step board 1
scoreboard players set cloud.countdown board 120
execute as @a[tag=sw.msg] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1

