##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=t_says] reset
function minecraft:t_says/reset

scoreboard players set t_says.state state 100
gamemode spectator @a[gamemode=adventure,team=t_says]
tag @a[team=t_says,gamemode=spectator,tag=!GLOBAL.SPEC] add t_says.tobecalc
title @a[team=t_says] title ["\u00a76游戏结束!"]
title @a[team=t_says] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:t_says/calc/highest
tellraw @a ["§a[I] ",{"text":"不要相信T氏的话","color":"light_purple","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=t_says.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=t_says,tag=t_says.win]"}]
tag @a[tag=t_says.win] remove t_says.tobecalc
execute if entity @a[tag=t_says.win] run tellraw @a[team=t_says] ["\u00a76 - 第一名：",{"selector":"@a[team=t_says,tag=t_says.win]"},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=t_says.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=t_says.win] remove t_says.win
# 第二
function minecraft:t_says/calc/highest
execute if entity @a[tag=t_says.win] run tellraw @a[team=t_says] ["\u00a76 - 第二名：",{"selector":"@a[team=t_says,tag=t_says.win]"},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=t_says.win] remove t_says.tobecalc
execute as @a[tag=t_says.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=t_says.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=t_says.win] remove t_says.win
# 第三
function minecraft:t_says/calc/highest
execute if entity @a[tag=t_says.win] run tellraw @a[team=t_says] ["\u00a76 - 第三名：",{"selector":"@a[team=t_says,tag=t_says.win]"},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=t_says.win] remove t_says.tobecalc
execute as @a[tag=t_says.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=t_says.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=t_says.win] remove t_says.win




tag @a remove t_says.tobecalc
tag @a remove t_says.win

tellraw @a[team=t_says] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
schedule function minecraft:t_says/tp 5s replace