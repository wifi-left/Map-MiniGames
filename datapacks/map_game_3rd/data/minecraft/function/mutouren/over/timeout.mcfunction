title @a[team=mutouren] title ["\u00a7c游戏结束"]
title @a[team=mutouren] subtitle ["\u00a7f倒计时结束"]

scoreboard players set mutouren.state state 100
gamemode spectator @a[gamemode=adventure,team=mutouren]
title @a[team=mutouren] title ["\u00a76游戏结束!"]
title @a[team=mutouren] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
tellraw @a ["§a[I] ",{"text":"1、2、3，木头人","color":"aqua","bold":true}," §a: §b游戏结束！"]

tag @a remove mutouren.win

tellraw @a[team=mutouren] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]

function minecraft:mutouren/over/all