##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f与亚奇洛贝"]
scoreboard players set zombie.round board 12
scoreboard players set zombie.state state 2
tellraw @a[team=play.zombie] ["\u00a7a你：\u00a7f对了，我看到墙上有有关于地牢的任务。你知道怎么进入地牢吗？"]
schedule function minecraft:zombieever/talks/findkey/2 4s append
