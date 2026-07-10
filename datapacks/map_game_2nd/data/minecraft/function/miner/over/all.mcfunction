
scoreboard players set miner.state state 100
forceload remove -57 574 -135 652
schedule function minecraft:miner/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] §2一掘到底§c游戏结束。"]
tellraw @a[team=miner] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify miner friendlyFire false
execute as @a[team=miner,gamemode=survival] run gamemode spectator @s
execute as @a[team=miner,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:miner/map/reset_m
function minecraft:miner/map/reset_map
tag @a remove miner.win