##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score battle.item.a.1 board matches 1.. run function battle/item/axe

execute if score battle.item.a.1 board matches 1.. run function battle/choose/tp
execute if score battle.item.a.1 board matches 1.. run scoreboard players remove battle.item.a.1 board 1
execute if score battle.item.a.1 board matches ..0 run setblock 150 44 -312 redstone_block


