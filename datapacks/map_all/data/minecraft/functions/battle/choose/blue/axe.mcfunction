execute if score battle.item.a.1 board matches 1.. run function battle/item/axe

execute if score battle.item.a.1 board matches 1.. run function battle/choose/tp
execute if score battle.item.a.1 board matches 1.. run scoreboard players remove battle.item.a.1 board 1
execute if score battle.item.a.1 board matches ..0 run setblock 150 44 -312 redstone_block
