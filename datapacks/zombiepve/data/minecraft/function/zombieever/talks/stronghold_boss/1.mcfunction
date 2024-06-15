##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set zombie.round board 26
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f地牢BOSS 幻术师"]
tellraw @a[team=play.zombie] ["\u00a7b幻术师：\u00a7f已经好多年没有冒险者到我这里来了。"]
schedule function minecraft:zombieever/talks/stronghold_boss/2 4s append

data merge entity @e[tag=pve.title,limit=1] {CustomName:'"\\u00a7c地牢BOSS战"'}

