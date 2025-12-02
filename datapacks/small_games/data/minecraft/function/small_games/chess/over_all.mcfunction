##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

scoreboard players set chess.state state 2
schedule function small_games/chess/tp 5s
tellraw @a[team=chestgame] ["\u00a7e你将在\u00a7c5s\u00a7e后传送"]
function minecraft:small_games/chess/kill_temp