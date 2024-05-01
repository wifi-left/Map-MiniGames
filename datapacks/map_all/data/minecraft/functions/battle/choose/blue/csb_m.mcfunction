##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score battle.item.a.2 board matches 1.. run function battle/item/crossbow_multi
# execute if score battle.item.a.2 board matches 1.. run setblock 147 44 -312 redstone_block
execute if score battle.item.a.2 board matches 1.. run function battle/choose/tp
execute if score battle.item.a.2 board matches 1.. run scoreboard players remove battle.item.a.2 board 1
execute if score battle.item.a.2 board matches ..0 run setblock 147 44 -312 redstone_block

