##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set build_parkour.state state 100
team join build_parkour @a[team=build_parkour.killer]
gamemode spectator @a[gamemode=adventure,team=build_parkour]
tag @a[team=build_parkour,gamemode=spectator,tag=!GLOBAL.SPEC] add build_parkour.tobecalc
title @a[team=build_parkour] title ["\u00a76游戏结束!"]
title @a[team=build_parkour] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:build_parkour/calc/highest
tellraw @a ["§a[I] ",{"text":"你建我跑","color":"#aed3ff","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=build_parkour.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=build_parkour,tag=build_parkour.win]"}]
tag @a[tag=build_parkour.win] remove build_parkour.tobecalc
execute if entity @a[tag=build_parkour.win] run tellraw @a[team=build_parkour] ["\u00a76 - 第一名：",{"selector":"@a[team=build_parkour,tag=build_parkour.win]"},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=build_parkour.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=build_parkour.win] remove build_parkour.win
# 第二
function minecraft:build_parkour/calc/highest
execute if entity @a[tag=build_parkour.win] run tellraw @a[team=build_parkour] ["\u00a76 - 第二名：",{"selector":"@a[team=build_parkour,tag=build_parkour.win]"},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=build_parkour.win] remove build_parkour.tobecalc
execute as @a[tag=build_parkour.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=build_parkour.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=build_parkour.win] remove build_parkour.win
# 第三
function minecraft:build_parkour/calc/highest
execute if entity @a[tag=build_parkour.win] run tellraw @a[team=build_parkour] ["\u00a76 - 第三名：",{"selector":"@a[team=build_parkour,tag=build_parkour.win]"},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
tag @a[tag=build_parkour.win] remove build_parkour.tobecalc
execute as @a[tag=build_parkour.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=build_parkour.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=build_parkour.win] remove build_parkour.win


tag @a remove build_parkour.builder
tag @a remove build_parkour.tobecalc
tag @a remove build_parkour.win

tellraw @a[team=build_parkour] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
schedule function minecraft:build_parkour/tp 5s replace