scoreboard players set elytra.state state 2
scoreboard players set elytra.time tick 6
tellraw @a[team=elytra] ["\n \u00a7b\u00a7l飞行大赛\u00a76：飞到终点！\n"]
execute as @a[team=elytra] run function minecraft:elytra/map/p_ready_to_start