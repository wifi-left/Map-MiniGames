title @a[team=fishing] title ["\u00a7c游戏结束"]
title @a[team=fishing] subtitle ["\u00a7f倒计时结束"]

scoreboard players set fishing.state state 100
gamemode spectator @a[gamemode=adventure,team=fishing]
tag @a[team=fishing,gamemode=spectator,tag=!GLOBAL.SPEC] add fishing.tobecalc
title @a[team=fishing] title ["\u00a76游戏结束!"]
title @a[team=fishing] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:fishing/calc/highest
tellraw @a ["§a[I] ",{"text":"钓鱼达人","color":"aqua","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=fishing.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=fishing,tag=fishing.win]"}]
tag @a[tag=fishing.win] remove fishing.tobecalc
execute if entity @a[tag=fishing.win] run tellraw @a[team=fishing] ["\u00a76 - 第一名：",{"selector":"@a[team=fishing,tag=fishing.win]"},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=fishing.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=fishing.win] remove fishing.win
# 第二
function minecraft:fishing/calc/highest
execute if entity @a[tag=fishing.win] run tellraw @a[team=fishing] ["\u00a76 - 第二名：",{"selector":"@a[team=fishing,tag=fishing.win]"},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=fishing.win] remove fishing.tobecalc
execute as @a[tag=fishing.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=fishing.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=fishing.win] remove fishing.win
# 第三
function minecraft:fishing/calc/highest
execute if entity @a[tag=fishing.win] run tellraw @a[team=fishing] ["\u00a76 - 第三名：",{"selector":"@a[team=fishing,tag=fishing.win]"},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=fishing.win] remove fishing.tobecalc
execute as @a[tag=fishing.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=fishing.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=fishing.win] remove fishing.win

tag @a remove fishing.tobecalc
tag @a remove fishing.win

tellraw @a[team=fishing] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]

function minecraft:fishing/over/all