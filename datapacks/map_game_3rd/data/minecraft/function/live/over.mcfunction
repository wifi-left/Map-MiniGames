##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill 222 -61 229 191 -37 260 air replace minecraft:heavy_weighted_pressure_plate

scoreboard players set live.state state 100
team join live @a[team=live.killer]
gamemode spectator @a[gamemode=adventure,team=live]
tag @a[team=live,gamemode=spectator,tag=!GLOBAL.SPEC] add live.tobecalc
title @a[team=live] title ["\u00a76游戏结束!"]
title @a[team=live] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:live/calc/highest
tellraw @a ["§a[I] ",{"text":"追杀游戏","color":"#aed3ff","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=live.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=live,tag=live.win]"}]
tag @a[tag=live.win] remove live.tobecalc
execute if entity @a[tag=live.win] run tellraw @a[team=live] ["\u00a76 - 第一名：",{"selector":"@a[team=live,tag=live.win]"},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=live.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=live.win] remove live.win
# 第二
function minecraft:live/calc/highest
execute if entity @a[tag=live.win] run tellraw @a[team=live] ["\u00a76 - 第二名：",{"selector":"@a[team=live,tag=live.win]"},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=live.win] remove live.tobecalc
execute as @a[tag=live.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=live.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=live.win] remove live.win
# 第三
function minecraft:live/calc/highest
execute if entity @a[tag=live.win] run tellraw @a[team=live] ["\u00a76 - 第三名：",{"selector":"@a[team=live,tag=live.win]"},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=live.win] remove live.tobecalc
execute as @a[tag=live.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=live.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=live.win] remove live.win




tag @a remove live.tobecalc
tag @a remove live.win

tellraw @a[team=live] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
schedule function minecraft:live/tp 5s replace