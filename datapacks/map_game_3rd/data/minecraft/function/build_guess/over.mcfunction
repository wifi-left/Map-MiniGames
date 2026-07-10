##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set build_guess.state state 100
team join build_guess @a[team=build_guess.killer]
gamemode spectator @a[gamemode=adventure,team=build_guess]
tag @a[team=build_guess,gamemode=spectator,tag=!GLOBAL.SPEC] add build_guess.tobecalc
title @a[team=build_guess] title ["\u00a76游戏结束!"]
title @a[team=build_guess] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:build_guess/calc/highest
tellraw @a ["§a[I] ",{"text":"建筑猜猜乐","color":"#aed3ff","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=build_guess.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=build_guess,tag=build_guess.win]"}]
tag @a[tag=build_guess.win] remove build_guess.tobecalc
execute if entity @a[tag=build_guess.win] run tellraw @a[team=build_guess] ["\u00a76 - 第一名：",{"selector":"@a[team=build_guess,tag=build_guess.win]"},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=build_guess.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=build_guess.win] remove build_guess.win
# 第二
function minecraft:build_guess/calc/highest
execute if entity @a[tag=build_guess.win] run tellraw @a[team=build_guess] ["\u00a76 - 第二名：",{"selector":"@a[team=build_guess,tag=build_guess.win]"},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=build_guess.win] remove build_guess.tobecalc
execute as @a[tag=build_guess.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=build_guess.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=build_guess.win] remove build_guess.win
# 第三
function minecraft:build_guess/calc/highest
execute if entity @a[tag=build_guess.win] run tellraw @a[team=build_guess] ["\u00a76 - 第三名：",{"selector":"@a[team=build_guess,tag=build_guess.win]"},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=build_guess.win] remove build_guess.tobecalc
execute as @a[tag=build_guess.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=build_guess.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=build_guess.win] remove build_guess.win


tag @a remove build_guess.builder
tag @a remove build_guess.tobecalc
tag @a remove build_guess.win

tellraw @a[team=build_guess] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
schedule function minecraft:build_guess/tp 5s replace