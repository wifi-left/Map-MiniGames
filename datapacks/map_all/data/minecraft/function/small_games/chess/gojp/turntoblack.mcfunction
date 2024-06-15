##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill ~ ~-1 ~ ~ ~-1 ~ black_stained_glass replace glass
fill ~ 115 ~ ~ 115 ~ black_wool replace orange_wool
playsound ui.button.click player @a[team=chestgame] ~ ~ ~
summon marker ~ ~-1 ~ {Tags:["chess.point"]}
function small_games/chess/gojp/change/black
execute if score chess.state state matches 1 run function small_games/chess/gojp/nextround

# execute if score chess.state state matches 1 run function small_games/chess/gojp/check/pj
kill @s

