##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless entity @e[tag=pve.npc.pre] run function zombieever/talks/pre/sbdied
execute unless entity @e[tag=pve.npc.pre] run return 0
tellraw @a[team=play.zombie] ["\u00a74蜜斯莱哈雅：\u00a7f在这个世界上，你们队伍里只要有一人活着，你们都可以完好地复活。\u00a7f你们可以去\u00a7d冒险者中心\u00a7f注册冒险者，详情可以找\u00a7e亚奇洛贝\u00a7f问问。\n"]

kill @e[type=villager,tag=pve.npc.pre]
effect clear @a[team=play.zombie] blindness
effect clear @a[team=play.zombie] slowness
effect clear @a[team=play.zombie] jump_boost
effect clear @a[team=play.zombie] invisibility
bossbar set zombie:zombiecount name ["\u00a7a寻找：\u00a7e亚奇洛贝"]
scoreboard players reset * zombie.villager.click
scoreboard players set zombie.round board 1

