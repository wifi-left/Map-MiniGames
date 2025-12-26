##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill -5 17 77 30 17 112 glass

scoreboard players set color.state state 0

tellraw @a ["§a[I] ",{"text":"色盲派对","color":"#a7d3ff","bold":true}," §a: §b游戏结束！"]
execute if entity @a[gamemode=adventure,team=play.color] run tellraw @a ["§e获胜者：",{"selector":"@a[gamemode=adventure,team=play.color]"}]
title @a[gamemode=adventure,team=play.color] title ["\u00a76你赢了！"]
title @a[gamemode=spectator,team=play.color] title ["\u00a7c\u00a7l游戏结束"]
execute as @a[gamemode=adventure,team=play.color,tag=play.total] run function minecraft:small_games/total/win_score {score:3}
gamemode adventure @a[gamemode=spectator,team=play.color]
gamemode adventure @a[gamemode=spectator,team=wait.color]
# execute if entity @a[team=car.wait,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute if entity @a[team=play.color,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[gamemode=adventure,team=wait.color] run function color/join
execute as @a[gamemode=adventure,team=play.color] run function color/join
kill @e[tag=colorran,type=marker]
schedule clear minecraft:color/summon
fill -5 17 77 30 17 112 glass

forceload remove 29 111 -7 75



