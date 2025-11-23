
scoreboard players set random_parkour.state state 100
forceload remove 10 211 104 247
schedule function minecraft:random_parkour/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] §2随机跑酷§c游戏结束。"]
tellraw @a[team=random_parkour] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify random_parkour friendlyFire false
execute as @a[team=random_parkour,gamemode=!creative] run gamemode spectator @s

schedule clear minecraft:random_parkour/map/reset_m
schedule clear minecraft:random_parkour/map/init_move
schedule clear minecraft:random_parkour/map/next_move
function minecraft:random_parkour/map/reset_map
tag @a remove random_parkour.win
team modify random_parkour friendlyFire false
