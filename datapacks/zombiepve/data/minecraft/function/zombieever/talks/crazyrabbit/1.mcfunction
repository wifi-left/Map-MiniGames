##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#pve.event.block.fruit
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f与亚奇洛贝"]
scoreboard players set zombie.round board 10
tellraw @a[team=play.zombie] ["\u00a7e亚奇洛贝：\u00a7f接下来派发下一个任务。湖边的兔子发疯了，你们能解决这个问题吗？听说是一个长得像鱿鱼的魔术师干的，不解决魔术师问题是解决不了的。"]
schedule function zombieever/tasks/crazy_rabbit 4s append
