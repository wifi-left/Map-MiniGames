##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set chair.state state 100
title @a[team=chair] title ["\u00a76游戏结束!"]
title @a[team=chair] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一

tellraw @a ["§a[I] ",{"text":"抢板凳","color":"#965eff","bold": true}," §a: §b游戏结束！"]
execute if entity @a[team=chair,gamemode=adventure] run tellraw @a ["§e获胜者：",{"selector":"@a[team=chair,gamemode=adventure]"}]

execute as @a[team=chair,gamemode=adventure] run function minecraft:small_games/total/win_score {score:3}

gamemode spectator @a[gamemode=adventure,team=chair]

tellraw @a[team=chair] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
schedule function minecraft:chair/tp 5s replace
kill @e[type=minecart,tag=chair.chair]
