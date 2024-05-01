##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clone 79 125 50 79 125 50 75 106 54
clone 79 125 54 79 125 54 75 106 55
clone 79 125 58 79 125 58 75 106 56
clone 75 125 50 75 125 50 74 106 54
clone 75 125 54 75 125 54 74 106 55
clone 75 125 58 75 125 58 74 106 56
clone 71 125 50 71 125 50 73 106 54
clone 71 125 54 71 125 54 73 106 55
clone 71 125 58 71 125 58 73 106 56

scoreboard players set boom.fill.result.black board 0
execute if score chess.state state matches 1 store result score boom.fill.result.black board run fill 73 106 56 75 106 54 minecraft:black_stained_glass replace black_wool

scoreboard players set boom.fill.result.white board 0
execute if score chess.state state matches 1 store result score boom.fill.result.white board run fill 73 106 56 75 106 54 minecraft:white_stained_glass replace white_wool

tellraw @a[team=chestgame] {"translate":"当前占领：\n\u00a70\u00a7l黑队 %s 个\n\u00a7f\u00a7l白队 %s 个","color": "gold","with":[{"score":{"name": "boom.fill.result.black","objective": "board"},"color": "yellow"},{"score":{"name": "boom.fill.result.white","objective": "board"},"color": "yellow"}]}

execute if score chess.state state matches 1 if score boom.fill.result.white board = boom.fill.result.black board run function minecraft:small_games/chess/boom/win/pj
execute if score chess.state state matches 1 if score boom.fill.result.white board < boom.fill.result.black board run function minecraft:small_games/chess/boom/win/black
execute if score chess.state state matches 1 if score boom.fill.result.white board > boom.fill.result.black board run function minecraft:small_games/chess/boom/win/white
