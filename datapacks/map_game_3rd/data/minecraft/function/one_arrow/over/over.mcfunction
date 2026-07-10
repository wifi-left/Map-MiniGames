scoreboard players set one_arrow.state state 100
title @a[team=one_arrow] title ["\u00a76游戏结束!"]
title @a[team=one_arrow] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:one_arrow/calc/highest
tellraw @a ["§a[I] ",{"text":"一箭毙命","color":"aqua","bold":true}," §a: §b游戏结束！"]
execute if entity @a[team=one_arrow,gamemode=adventure] run tellraw @a ["§e获胜者：",{"selector":"@a[team=one_arrow,gamemode=adventure]"}]
execute if entity @a[team=one_arrow,gamemode=adventure] run title @a[team=one_arrow] subtitle ["§e获胜者：",{"selector":"@a[team=one_arrow,gamemode=adventure]"}]
execute as @a[team=one_arrow,gamemode=adventure] run function minecraft:small_games/total/win_score {score:3}
execute as @a[team=one_arrow,gamemode=adventure] run title @s title ["\u00a76你赢了！"]

tellraw @a[team=one_arrow] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
gamemode spectator @a[gamemode=adventure,team=one_arrow]
function minecraft:one_arrow/over/all