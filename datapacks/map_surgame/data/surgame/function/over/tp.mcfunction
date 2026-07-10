##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=play.sur] add surback
tag @a[team=wait.sur] add surback
tag @a[team=play.sur.zom] add surback
clear @a[tag=surback]
scoreboard players set sur.state state 0
gamemode adventure @a[tag=surback]

execute if entity @a[tag=surback,tag=play.total] run function minecraft:small_games/total/next_game_trigger

execute as @a[tag=surback] run function surgame:join
tag @a remove surback
schedule clear surgame:enablepvp
schedule clear surgame:reset/process
schedule clear surgame:reset/start


