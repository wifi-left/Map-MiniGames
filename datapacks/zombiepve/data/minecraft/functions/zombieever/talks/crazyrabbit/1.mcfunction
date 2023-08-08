#pve.event.block.fruit
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f与亚奇洛贝"]
scoreboard players set zombie.round board 10
tellraw @a[team=play.zombie] ["\u00a7e亚奇洛贝：\u00a7f接下来派发下一个任务。湖边的兔子发疯了，你们能解决这个问题吗？"]
schedule function zombieever/tasks/crazy_rabbit 4s append