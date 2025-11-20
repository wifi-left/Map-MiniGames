title @a[team=mining] title ["\u00a7c游戏结束"]
title @a[team=mining] subtitle ["\u00a7f倒计时结束"]

scoreboard players set mining.state state 100
gamemode spectator @a[gamemode=adventure,team=mining]
gamemode spectator @a[gamemode=survival,team=mining]
tag @a[team=mining,gamemode=spectator,tag=!GLOBAL.SPEC] add mining.tobecalc
title @a[team=mining] title ["\u00a76游戏结束!"]
title @a[team=mining] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:mining/calc/highest
tellraw @a ["§a[I] ",{"text":"挖矿达人","color":"dark_red","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=mining.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=mining,tag=mining.win]"}]
tag @a[tag=mining.win] remove mining.tobecalc
execute if entity @a[tag=mining.win] run tellraw @a[team=mining] ["\u00a76 - 第一名：",{"selector":"@a[team=mining,tag=mining.win]"}]
execute as @a[tag=mining.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=mining.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=mining.win] remove mining.win
# 第二
function minecraft:mining/calc/highest
execute if entity @a[tag=mining.win] run tellraw @a[team=mining] ["\u00a76 - 第二名：",{"selector":"@a[team=mining,tag=mining.win]"}]
tag @a[tag=mining.win] remove mining.tobecalc
execute as @a[tag=mining.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=mining.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=mining.win] remove mining.win
# 第三
function minecraft:mining/calc/highest
execute if entity @a[tag=mining.win] run tellraw @a[team=mining] ["\u00a76 - 第三名：",{"selector":"@a[team=mining,tag=mining.win]"}]
tag @a[tag=mining.win] remove mining.tobecalc
execute as @a[tag=mining.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=mining.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=mining.win] remove mining.win

tag @a remove mining.tobecalc
tag @a remove mining.win

tellraw @a[team=mining] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]

function minecraft:mining/over/all