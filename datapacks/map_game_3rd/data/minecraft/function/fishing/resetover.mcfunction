scoreboard players set fishing.state state 2
scoreboard players set fishing.time tick 6
tellraw @a[team=fishing] ["\n \u00a7b\u00a7l钓鱼达人\u00a76：钓鱼！\n"]
execute as @a[team=fishing] run function minecraft:fishing/map/p_ready_to_start