##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless entity @e[tag=pve.npc.pre] run function zombieever/talks/pre/sbdied
execute unless entity @e[tag=pve.npc.pre] run return 0
tellraw @a[team=play.zombie] ["§4蜜斯莱哈雅：§f祝你们顺利。"]
schedule function minecraft:zombieever/talks/pre/done 3s append


