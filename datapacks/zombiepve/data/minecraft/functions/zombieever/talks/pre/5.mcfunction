execute unless entity @e[tag=pve.npc.pre] run function zombieever/talks/pre/sbdied
execute unless entity @e[tag=pve.npc.pre] run return 0
tellraw @a[team=play.zombie] ["\u00a74蜜斯莱哈雅：\u00a7f祝你们顺利。"]
schedule function minecraft:zombieever/talks/pre/done 3s append
