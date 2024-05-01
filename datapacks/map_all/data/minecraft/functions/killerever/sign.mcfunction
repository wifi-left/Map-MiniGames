##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score beli.num state matches ..0 run scoreboard players set beli.num state 1
execute if score beli.num state matches 7.. run scoreboard players set beli.num state 6
# data merge block 14 3 -46 {Textx2:'[{"score":{"objective":"state","name":"beli.num"},"color":"green"}," \\u00a7bBlocks \\u00a76/ \\u00a7bs"]'}
# execute if score beli.num state matches 6..6 run data merge block 14 3 -46 {Textx4:'"\\u00a74HARD"'}
# execute if score beli.num state matches 4..5 run data merge block 14 3 -46 {Textx4:'"\\u00a7cA bit hard"'}
# execute if score beli.num state matches 1..1 run data merge block 14 3 -46 {Textx4:'"\\u00a7aEasy"'}
# execute if score beli.num state matches 2..3 run data merge block 14 3 -46 {Textx4:'"\\u00a7bNormal"'}

