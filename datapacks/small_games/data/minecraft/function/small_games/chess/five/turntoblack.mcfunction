##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
fill ~ ~-1 ~ ~ ~-1 ~ black_stained_glass replace glass
summon block_display ~ ~-1 ~ {block_state:{Name:"black_wool"},transformation:{translation:[-0.25f,0.75f,-0.25f],left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f]},Tags:["chess.display"]}
fill ~ 115 ~ ~ 115 ~ black_wool replace orange_wool
playsound ui.button.click player @a[team=chestgame] ~ ~ ~
function small_games/chess/five/check/checkblack
execute if score chess.state state matches 1 run function small_games/chess/five/check/pj
kill @s

