##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set snow.state state 0
tellraw @a ["§f[SNOW] §c游戏结束 ! §a获胜者: ",{"selector":"@a[team=play.snow,gamemode=adventure]"}]
title @a[team=play.snow,gamemode=adventure] title ["\u00a76你赢了！"]
title @a[team=play.snow,gamemode=spectator] title ["\u00a7c\u00a7l游戏结束"]
execute as @a[team=play.snow,gamemode=adventure,tag=play.total] run function minecraft:small_games/total/win_score {score:3}
execute if entity @a[team=play.snow,tag=play.total] run function small_games/total/next_game
gamemode adventure @a[team=play.snow]
execute as @a[team=play.snow] run function snow/join
gamemode adventure @a[team=wait.snow]
execute as @a[team=wait.snow] run function snow/join
kill @e[type=marker,tag=snow.disa]
function minecraft:snow/reset
schedule clear snow/final
schedule clear minecraft:snow/smaller/remove1


