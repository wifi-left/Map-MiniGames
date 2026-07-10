tellraw @a[team=chair] ["\n\u00a76本轮结束。\n\u00a7b--------------------"]
scoreboard players set chair.state state 3
scoreboard players set chair.time board 6
tag @a remove chair.ok
execute as @e[type=minecart,tag=chair.chair] at @s on passengers run tag @s add chair.ok
execute as @a[team=chair,gamemode=adventure,tag=!chair.ok] run function minecraft:chair/died
tag @a remove chair.ok
tellraw @a[team=chair] ["\u00a7b--------------------\n\u00a76即将进入下一轮\n"]