scoreboard players set hunger.time board 61
scoreboard players set hunger.state state 1
scoreboard players set hunger.chests board 3
function minecraft:hunger/flushitem
bossbar set minecraft:hungergame max 60
bossbar set minecraft:hungergame value 60
tellraw @a[team=hunger] ["\u00a7a游戏正式开始！物品箱子已经刷新！"]
title @a[team=hunger] title ["\u00a7a游戏正式开始！"]
execute as @a[team=hunger] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
title @a[team=hunger] subtitle ["\u00a7ePVP将会在\u00a7c60s\u00a7e后启用"]