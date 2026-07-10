scoreboard players set one_arrow.state state 2
scoreboard players set one_arrow.time tick 16
tellraw @a[team=one_arrow] ["\n \u00a7b\u00a7l一箭毙命\u00a76：活到最后！所有箭矢的攻击都是一箭毙命的。\n"]
execute as @a[team=one_arrow] run function minecraft:one_arrow/map/p_ready_to_start