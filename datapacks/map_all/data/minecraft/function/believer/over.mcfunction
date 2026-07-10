##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
forceload add 6 -49 38 -81
scoreboard players set beli.state state 0
tellraw @a ["§a[I] ",{"text":"Block Believer","color":"#a7d3ff","bold":true}," §a: §b游戏结束！\n§e获胜者：",{"selector":"@a[gamemode=adventure,team=play.beli]"}]

title @a[gamemode=adventure,team=play.beli] title ["\u00a76你赢了！"]
title @a[gamemode=spectator,team=play.beli] title ["\u00a7c\u00a7l游戏结束!"]

execute as @a[gamemode=adventure,team=play.beli,tag=play.total] run function minecraft:small_games/total/win_score {score:3}
execute if entity @a[team=play.beli,tag=play.total] run function minecraft:small_games/total/next_game_trigger

gamemode adventure @a[gamemode=spectator,team=play.beli]
gamemode adventure @a[gamemode=spectator,team=wait.beli]
execute as @a[gamemode=adventure,team=wait.beli] run function believer/join
execute as @a[gamemode=adventure,team=play.beli] run function believer/join
schedule clear minecraft:believer/summon
kill @e[tag=beliran,type=marker]
forceload remove 6 -49 38 -81

team modify play.beli friendlyFire false