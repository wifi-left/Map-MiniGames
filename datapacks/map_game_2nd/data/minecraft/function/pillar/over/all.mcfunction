
scoreboard players set pillar.state state 100
forceload remove -57 574 -135 652
schedule function minecraft:pillar/over/tp 5s replace
recipe take @a[team=pillar] *

tellraw @a ["§a§l[MESSAGE] §e幸运之柱§c游戏结束。"]
tellraw @a[team=pillar] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify pillar friendlyFire false
execute as @a[team=pillar,gamemode=survival] run gamemode spectator @s
execute as @a[team=pillar,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:pillar/map/reset_m
function minecraft:pillar/map/reset_map
schedule clear minecraft:pillar/resetover
