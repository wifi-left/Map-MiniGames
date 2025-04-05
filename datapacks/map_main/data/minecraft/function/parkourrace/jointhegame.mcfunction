##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§a[INFO] §b游戏已经开始了！ 你已加入游戏 ！"]
team join play.parkour @s
tellraw @a[team=play.parkour] ["\n",{"selector":"@s"},"§b 加入了 §aParkour Race§b.\n"]
function minecraft:parkourrace/died

