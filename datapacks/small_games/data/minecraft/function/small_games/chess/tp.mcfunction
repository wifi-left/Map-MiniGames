##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set chess.state state 0
gamemode adventure @a[team=chestgame,gamemode=spectator]
execute as @a[team=chestgame,gamemode=adventure] run function small_games/chess/join

kill @e[type=marker,tag=chess.marker]
kill @e[type=marker,tag=chess.point]

kill @e[tag=chess.put.white]
kill @e[tag=chess.put.black]
kill @e[tag=chess.put.a]
kill @e[tag=chess.put.b]
kill @e[tag=chess.put.c]
kill @e[tag=chess.put.d]