
scoreboard players set elytra.state state 100
schedule function minecraft:elytra/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] §b飞行大赛§c游戏结束。"]
tellraw @a[team=elytra] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify elytra friendlyFire false
execute as @a[team=elytra,gamemode=adventure] run gamemode spectator @s

tag @a remove elytra.win
fill 98 99 347 98 103 357 minecraft:barrier
