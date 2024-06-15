##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7a[INFO] \u00a7b游戏已经开始了！ 你已加入游戏 ！"]
team join play.parkour @s
tellraw @a[team=play.parkour] ["\n",{"selector":"@s"},"\u00a7b 加入了 \u00a7aParkour Race\u00a7b.\n"]
function minecraft:parkourrace/died
