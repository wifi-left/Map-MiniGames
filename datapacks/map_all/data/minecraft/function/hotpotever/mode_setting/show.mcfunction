##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score hotpot.mode state matches 0 run data modify block -66 61 -85 front_text.messages[2] set value "\u00a7b{随机选择}"
execute if score hotpot.mode state matches 1 run data modify block -66 61 -85 front_text.messages[2] set value "\u00a77普通模式"
execute if score hotpot.mode state matches 2 run data modify block -66 61 -85 front_text.messages[2] set value "\u00a7a弓模式"
execute if score hotpot.mode state matches 3 run data modify block -66 61 -85 front_text.messages[2] set value "\u00a7d三叉戟模式"
execute if score hotpot.mode state matches 4 run data modify block -66 61 -85 front_text.messages[2] set value "\u00a7e弩模式"
