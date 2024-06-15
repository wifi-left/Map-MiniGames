##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=play.sur] add surback
tag @a[team=wait.sur] add surback
tag @a[team=play.sur.zom] add surback
clear @a[tag=surback]
scoreboard players set sur.state state 0
gamemode adventure @a[tag=surback]
execute as @a[tag=surback] run function surgame:join
tag @a remove surback
schedule clear surgame:enablepvp
schedule clear surgame:reset/process
schedule clear surgame:reset/start

