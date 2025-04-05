scoreboard players set chess.state state 0
gamemode adventure @a[team=chestgame,gamemode=spectator]
execute as @a[team=chestgame,gamemode=adventure] run function small_games/chess/join

kill @e[type=marker,tag=chess.marker]
kill @e[type=marker,tag=chess.point]
