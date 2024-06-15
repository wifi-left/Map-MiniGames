##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute as @e[tag=chess.point] at @s if block ~ ~-1 ~ black_wool run particle minecraft:dust 0 0 0 1 ~ ~10 ~ 0 0 0 1 5 normal
# execute as @e[tag=chess.point] at @s if block ~ ~-1 ~ white_wool run particle minecraft:dust 1 1 1 1 ~ ~10 ~ 0 0 0 1 5 normal
title @a[tag=chess.white] actionbar ["\u00a76\u00a7l你在\u00a7f\u00a7l白队。\u00a7b\u00a7l下棋时间限制：",{"score":{"name": "chess.countdown","objective": "board"},"color": "red","bold": true},"\u00a7a秒"]
title @a[tag=chess.black] actionbar ["\u00a76\u00a7l你在\u00a70\u00a7l黑队。\u00a7b\u00a7l下棋时间限制：",{"score":{"name": "chess.countdown","objective": "board"},"color": "red","bold": true},"\u00a7a秒"]
scoreboard players set chess.players board 0
scoreboard players set chess.players.black board 0
scoreboard players set chess.players.white board 0
execute as @a[team=chestgame] run scoreboard players add chess.players board 1
execute as @a[team=chestgame,tag=chess.black] run scoreboard players add chess.players.black board 1
execute as @a[team=chestgame,tag=chess.white] run scoreboard players add chess.players.white board 1
execute if score chess.state state matches 1..1 if score chess.players board matches ..1 run function small_games/chess/five/win/sthwrong
execute if score chess.state state matches 1..1 if score chess.players.black board matches ..0 run tellraw @a[team=chestgame] ["\u00a7c黑队目前无人。"]
execute if score chess.state state matches 1..1 if score chess.players.black board matches ..0 run function small_games/chess/five/win/white
execute if score chess.state state matches 1..1 if score chess.players.white board matches ..0 run tellraw @a[team=chestgame] ["\u00a7c白队目前无人。"]
execute if score chess.state state matches 1..1 if score chess.players.white board matches ..0 run function small_games/chess/five/win/black

execute if score chess.countdown board matches 1.. if score chess.state state matches 1 run scoreboard players remove chess.countdown board 1
execute if score chess.countdown board matches ..0 run function small_games/chess/five/turn/timeout
