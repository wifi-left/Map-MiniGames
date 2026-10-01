title @a[team=blockrace] title ["\u00a76游戏结束!"]
title @a[team=blockrace] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
tellraw @a ["§a[I] ",{bold:true,color:"#11ffaf",text:"方块竞速"}," §a: §b游戏结束！"]
execute if entity @a[team=blockrace,tag=blockrace.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=blockrace,tag=blockrace.win]"}]
execute if entity @a[team=blockrace,tag=blockrace.win] run title @a[team=blockrace] subtitle ["§e获胜者：",{"selector":"@a[team=blockrace,tag=blockrace.win]"}]
execute as @a[team=blockrace,tag=blockrace.win] run title @s title ["\u00a76你赢了！"]

tellraw @a[team=blockrace] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
gamemode spectator @a[gamemode=!creative,team=blockrace]
function minecraft:blockrace/over/all