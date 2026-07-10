title @a[team=elytra] title ["\u00a7c游戏结束"]
title @a[team=elytra] subtitle ["\u00a7f倒计时结束"]

scoreboard players set elytra.state state 100
gamemode spectator @a[gamemode=adventure,team=elytra]
title @a[team=elytra] title ["\u00a76游戏结束!"]
title @a[team=elytra] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
tellraw @a ["§a[I] ",{"text":"飞行大赛","color":"aqua","bold":true}," §a: §b游戏结束！"]

tag @a remove elytra.win

tellraw @a[team=elytra] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]

function minecraft:elytra/over/all