##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute on vehicle run kill @s[tag=GCAR]
tellraw @a[team=car.play] [{"selector":"@s"},"§a赢得了比赛！"]
tellraw @a[team=car.wait] [{"selector":"@s"},"§a赢得了比赛！"]
title @s title ["\u00a76You won!"]
title @s subtitle ["\u00a7a你完成了 3 圈！"]
gamemode spectator @s
tag @s add car.win

