title @a[team=firstoutwins] title ["\u00a76游戏结束!"]
title @a[team=firstoutwins] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
tellraw @a ["§a[I] ",{bold:true,color:"#A8C3A6",text:"谢幕者胜"}," §a: §b游戏结束！"]

tellraw @a[team=firstoutwins] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
gamemode spectator @a[gamemode=adventure,team=firstoutwins]
gamemode spectator @a[gamemode=survival,team=firstoutwins]
function minecraft:firstoutwins/over/all