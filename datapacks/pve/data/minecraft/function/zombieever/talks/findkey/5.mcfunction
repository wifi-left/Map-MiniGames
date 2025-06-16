##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["§e亚奇洛贝：§f其实还有一条通道。偷偷告诉你们，上次我去看的时候，他家的水井有个洞，一直忘了修。据说，§e水井里的水和湖里的水是联通的§f..."]
schedule function minecraft:zombieever/tasks/find_keys 3s append
scoreboard players set zombie.state state 1
setblock 681 6 -21 minecraft:structure_void


