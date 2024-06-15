##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill ~ ~-1 ~ ~ ~-1 ~ black_stained_glass replace glass
fill ~ 115 ~ ~ 115 ~ black_wool replace orange_wool
playsound ui.button.click player @a[team=chestgame] ~ ~ ~
execute at @s run function small_games/chess/boom/action/placeblack
# execute if score chess.state state matches 1 run function small_games/chess/boom/check/pj
kill @s

