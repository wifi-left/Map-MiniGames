##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\u00a74蜜斯莱哈雅：\u00a7f勇者大人们，你们被召唤到这个世界了。"]
schedule function minecraft:zombieever/talks/pre/3 4s append
scoreboard players set zombie.round board 0

