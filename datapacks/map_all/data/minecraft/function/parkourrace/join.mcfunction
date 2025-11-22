##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in overworld run tp @s -5 41 67 180 0
team join wait.parkour
tellraw @a[team=wait.parkour] [{"selector":"@s"},"§d 加入了游戏。"]

