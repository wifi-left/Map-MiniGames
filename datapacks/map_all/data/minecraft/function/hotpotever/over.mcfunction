##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set hotpot.state state 0
tellraw @a ["\u00a7a[I] ",{"text":"Hot Potato","color":"#aed3ff","bold": true}," \u00a7a: \u00a7b游戏结束！\n\u00a7e获胜者：",{"selector":"@a[gamemode=adventure,team=play.hotpot]"}]

title @a[gamemode=adventure,team=play.hotpot] title ["\u00a76You won!"]
title @a[gamemode=spectator,team=play.hotpot] subtitle ["\u00a7c\u00a7lGAME OVER"]
# Game Total
scoreboard players add @a[gamemode=adventure,team=play.hotpot] score 1

gamemode adventure @a[gamemode=spectator,team=play.hotpot]
gamemode adventure @a[gamemode=spectator,team=wait.hotpot]
gamemode adventure @a[gamemode=spectator,team=wait.hotpot.k]
execute as @a[gamemode=adventure,team=wait.hotpot] run function hotpotever/join
execute as @a[gamemode=adventure,team=play.hotpot] run function hotpotever/join
execute as @a[gamemode=adventure,team=play.hotpot.k] run function hotpotever/join
execute if entity @a[team=wait.hotpot,tag=play.total] run function small_games/total/next_game
# Reset

schedule clear minecraft:hotpotever/summon
