scoreboard players set disaster.snow.state state 100
title @a[team=disaster.snow] title ["\u00a76游戏结束!"]
title @a[team=disaster.snow] subtitle ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
# 第一
tellraw @a ["§a[I] ",{"text":"灾难 · 雪灾","color":"white","bold":true}," §a: §b游戏结束！"]
execute as @a[team=disaster.snow,gamemode=adventure] run tellraw @a ["§e获胜者：",{"selector":"@s"}]
execute as @a[team=disaster.snow,gamemode=adventure] run title @a[team=disaster.snow] subtitle ["§e获胜者：",{"selector":"@s"}]
execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:small_games/total/win_score {score:3}
execute as @a[team=disaster.snow,gamemode=adventure] run title @s title ["\u00a76你赢了！"]

tellraw @a[team=disaster.snow] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
gamemode spectator @a[gamemode=adventure,team=disaster.snow]
function minecraft:disaster/snow/over/all