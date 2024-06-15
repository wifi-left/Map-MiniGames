##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=golf] ["\u00a76 > 现在轮到 ",{"selector":"@s"},"\u00a76 了。"]
tp @s @e[limit=1,tag=golf.start]
tag @s remove golf.waitshoot
gamemode adventure @s
clear @s
