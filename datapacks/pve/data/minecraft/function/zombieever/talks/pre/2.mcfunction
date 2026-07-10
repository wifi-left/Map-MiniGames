##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["§4蜜斯莱哈雅：§f勇者大人们，你们被召唤到这个世界了。"]
schedule function minecraft:zombieever/talks/pre/3 4s append
scoreboard players set zombie.round board 0


