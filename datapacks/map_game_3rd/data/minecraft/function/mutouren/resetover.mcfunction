scoreboard players set mutouren.state state 2
scoreboard players set mutouren.time tick 6
tellraw @a[team=mutouren] ["\n \u00a7b\u00a7l1、2、3，木头人\u00a76：快速到达终点（绿宝石）！鬼会说“1、2、3，木头人，不许动”。当鬼说到“不许动”时候，停止你的运动。否则你将会返回出生点。\n"]
execute as @a[team=mutouren] run function minecraft:mutouren/map/p_ready_to_start