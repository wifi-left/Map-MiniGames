##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set color.state state 0

tellraw @a ["\u00a7a[I] ",{"text":"色盲派对","color":"#a7d3ff","bold": true}," \u00a7a: \u00a7b游戏结束！"]
execute if entity @a[gamemode=adventure,team=play.color] run tellraw @a ["\u00a7e获胜者：",{"selector":"@a[gamemode=adventure,team=play.color]"}]
title @a[gamemode=adventure,team=play.color] title ["\u00a76You won!"]
title @a[gamemode=spectator,team=play.color] title ["\u00a7c\u00a7lGAME OVER"]
scoreboard players add @a[gamemode=adventure,team=play.color,tag=play.total] score 1
gamemode adventure @a[gamemode=spectator,team=play.color]
gamemode adventure @a[gamemode=spectator,team=wait.color]
# execute if entity @a[team=car.wait,tag=play.total] run function small_games/total/next_game
execute if entity @a[team=play.color,tag=play.total] run function small_games/total/next_game
execute as @a[gamemode=adventure,team=wait.color] run function color/join
execute as @a[gamemode=adventure,team=play.color] run function color/join
kill @e[tag=colorran,type=marker]
schedule clear minecraft:color/summon
fill -5 17 77 30 17 112 glass

forceload remove 29 111 -7 75


