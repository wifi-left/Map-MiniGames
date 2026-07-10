##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score hotpot.map state matches 0 run data modify block -66 61 -81 front_text.messages[2] set value "\u00a7b{随机选择}"
execute if score hotpot.map state matches 1 run data modify block -66 61 -81 front_text.messages[2] set value "\u00a7e乱成一锅粥"
execute if score hotpot.map state matches 2 run data modify block -66 61 -81 front_text.messages[2] set value "\u00a7a冰火四重天"
execute if score hotpot.map state matches 3 run data modify block -66 61 -81 front_text.messages[2] set value "\u00a70远古遗迹"
