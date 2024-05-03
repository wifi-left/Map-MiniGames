##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[team=chestgame]

scoreboard players set chess.countdown board 90
scoreboard players add chess.turn board 1
execute if score chess.turn board matches 3.. run scoreboard players set chess.turn board 1

execute if score chess.turn board matches 1 run function small_games/chess/gojp/turn/black
execute if score chess.turn board matches 2 run function small_games/chess/gojp/turn/white
