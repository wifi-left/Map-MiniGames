##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set sneak.state state 0
tellraw @a ["§f[SNEAK] §c游戏结束 ! §a获胜者: ",{"selector":"@a[team=sneak,gamemode=adventure]"}]
title @a[team=sneak,gamemode=adventure] title ["\u00a76You won!"]
title @a[team=sneak,gamemode=spectator] title ["\u00a7c\u00a7lGAME OVER"]
execute as @a[team=sneak,gamemode=adventure,tag=play.total] run function minecraft:small_games/total/win_score {score:3}
execute if entity @a[team=sneak,tag=play.total] run function small_games/total/next_game
gamemode adventure @a[team=sneak]
execute as @a[team=sneak] run function sneak/join
function minecraft:sneak/reset
scoreboard players reset * sneak.color

