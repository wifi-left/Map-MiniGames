##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score beli.num state matches ..0 run scoreboard players set beli.num state 1
execute if score beli.num state matches 7.. run scoreboard players set beli.num state 6
data modify block 14 3 -46 front_text.messages[1] set value [{"score":{"objective":"state","name":"beli.num"},"color":"green"}," \u00a7bBlocks \u00a76/ \u00a7bs"]
execute if score beli.num state matches 6..6 run data modify block 14 3 -46 front_text.messages[3] set value "\u00a74HARD"
execute if score beli.num state matches 4..5 run data modify block 14 3 -46 front_text.messages[3] set value "\u00a7cA bit hard"
execute if score beli.num state matches 1..1 run data modify block 14 3 -46 front_text.messages[3] set value "\u00a7aEasy"
execute if score beli.num state matches 2..3 run data modify block 14 3 -46 front_text.messages[3] set value "\u00a7bNormal"


