##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[team=chestgame]
scoreboard players set chess.countdown board 60
scoreboard players add chess.turn board 1
execute if score chess.turn board matches 3.. run scoreboard players set chess.turn board 1

function minecraft:small_games/chess/boom/action/check/pj
execute if score chess.state state matches 2 run scoreboard players set chess.turn board 0

execute if score chess.turn board matches 1 run function small_games/chess/boom/turn/black
execute if score chess.turn board matches 2 run function small_games/chess/boom/turn/white
