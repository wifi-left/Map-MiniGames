
scoreboard players set finder.state state 100
schedule function minecraft:finder/over/tp 5s replace
kill @e[tag=finder.eggs.interaction]
kill @e[tag=finder.eggs.display]
kill @e[tag=finder.eggs.point]
tellraw @a ["§a§l[MESSAGE] §b彩蛋猎人§c游戏结束。"]
tellraw @a[team=finder] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify finder friendlyFire false
execute as @a[team=finder,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:finder/map/reset_m
forceload remove 148 519 20 661

tag @a remove finder.win
