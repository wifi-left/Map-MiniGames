##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset * score
function minecraft:small_games/total/games/games_reset

data modify block 321 90 152 front_text.messages[2] set value {text:"暂无","color":"yellow","bold":true}
data modify block 323 90 152 front_text.messages[2] set value {text:"暂无","color":"blue","bold":true}