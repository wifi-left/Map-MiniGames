##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set snow.state state 0
tellraw @a ["\u00a7f[SNOW] \u00a7c游戏结束 ! \u00a7a获胜者: ",{"selector":"@a[team=play.snow,gamemode=adventure]"}]
title @a[team=play.snow,gamemode=adventure] title ["\u00a76You won!"]
title @a[team=play.snow,gamemode=spectator] title ["\u00a7c\u00a7lGAME OVER"]
scoreboard players add @a[team=play.snow,gamemode=adventure,tag=play.total] score 1
execute if entity @a[team=play.snow,tag=play.total] run function small_games/total/next_game
gamemode adventure @a[team=play.snow]
execute as @a[team=play.snow] run function snow/join
gamemode adventure @a[team=wait.snow]
execute as @a[team=wait.snow] run function snow/join
kill @e[type=marker,tag=snow.disa]
function minecraft:snow/reset

