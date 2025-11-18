##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set pacman.state state 100
team join pacman @a[team=pacman.killer]
gamemode spectator @a[gamemode=adventure,team=pacman]
tag @a[team=pacman,gamemode=spectator,tag=!GLOBAL.SPEC] add pacman.tobecalc
title @a[team=pacman] title ["\u00a76游戏结束!"]
title @a[team=pacman] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
function minecraft:pacman/calc/highest
tellraw @a ["§a[I] ",{"text":"吃豆人","color":"#aed3ff","bold":true}," §a: §b游戏结束！"]
execute if entity @a[tag=pacman.win] run tellraw @a ["§e获胜者：",{"selector":"@a[team=pacman,tag=pacman.win]"}]
tag @a[tag=pacman.win] remove pacman.tobecalc
execute if entity @a[tag=pacman.win] run tellraw @a[team=pacman] ["\u00a76 - 第一名：",{"selector":"@a[team=pacman,tag=pacman.win]"}]
execute as @a[tag=pacman.win] run title @s title ["\u00a7a你获得了第一名！"]
execute as @a[tag=pacman.win] run function minecraft:small_games/total/win_score {score:3}
tag @a[tag=pacman.win] remove pacman.win
# 第二
function minecraft:pacman/calc/highest
execute if entity @a[tag=pacman.win] run tellraw @a[team=pacman] ["\u00a76 - 第二名：",{"selector":"@a[team=pacman,tag=pacman.win]"}]
tag @a[tag=pacman.win] remove pacman.tobecalc
execute as @a[tag=pacman.win] run function minecraft:small_games/total/win_score {score:2}
execute as @a[tag=pacman.win] run title @s title ["\u00a7b你获得了第二名！"]
tag @a[tag=pacman.win] remove pacman.win
# 第三
function minecraft:pacman/calc/highest
execute if entity @a[tag=pacman.win] run tellraw @a[team=pacman] ["\u00a76 - 第三名：",{"selector":"@a[team=pacman,tag=pacman.win]"}]
tag @a[tag=pacman.win] remove pacman.tobecalc
execute as @a[tag=pacman.win] run function minecraft:small_games/total/win_score {score:1}
execute as @a[tag=pacman.win] run title @s title ["\u00a7d你获得了第三名！"]
tag @a[tag=pacman.win] remove pacman.win




tag @a remove pacman.tobecalc
tag @a remove pacman.win

tellraw @a[team=pacman] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
schedule function minecraft:pacman/tp 5s replace