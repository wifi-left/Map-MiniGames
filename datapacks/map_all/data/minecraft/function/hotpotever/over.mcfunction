##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set hotpot.state state 0
tellraw @a ["§a[I] ",{"text":"Hot Potato","color":"#aed3ff","bold":true}," §a: §b游戏结束！\n§e获胜者：",{"selector":"@a[gamemode=adventure,team=play.hotpot]"}]

title @a[gamemode=adventure,team=play.hotpot] title ["\u00a76你赢了！"]
title @a[gamemode=spectator,team=play.hotpot] subtitle ["\u00a7c\u00a7l游戏结束"]
# Game Total
execute as @a[gamemode=adventure,team=play.hotpot] run function minecraft:small_games/total/win_score {score:3}

gamemode adventure @a[gamemode=spectator,team=play.hotpot]
gamemode adventure @a[gamemode=spectator,team=wait.hotpot]
gamemode adventure @a[gamemode=spectator,team=wait.hotpot.k]
execute as @a[gamemode=adventure,team=wait.hotpot] run function hotpotever/join
execute as @a[gamemode=adventure,team=play.hotpot] run function hotpotever/join
execute as @a[gamemode=adventure,team=play.hotpot.k] run function hotpotever/join
execute if entity @a[team=wait.hotpot,tag=play.total] run function small_games/total/next_game
# Reset

schedule clear minecraft:hotpotever/summon

