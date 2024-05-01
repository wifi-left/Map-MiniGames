##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=wolf.connected] add wolf.tmp
tag @a remove wolf.connected
execute as @a[gamemode=adventure,team=wolfpeople,tag=wolf.tmp] at @s run function minecraft:twolf/action/per/death/died
tag @a remove wolf.tmp
