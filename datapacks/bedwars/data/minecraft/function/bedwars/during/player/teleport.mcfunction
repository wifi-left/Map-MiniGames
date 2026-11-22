##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless function bedwars/during/player/onlytpspawn run return run tellraw @s "\n\u00a78[你已离开起床战争，已取消复活]\n"

# -359 30 210
# -305 30 265
# -251 30 211
# -305 30 157
effect give @s resistance 3 25 true
title @s clear
tellraw @s ["§e你已经重生！你拥有 \u00a7c3s\u00a7e 出生保护时间。"]
tag @s remove bw.fhing
tag @s remove bw.scrolling
gamemode adventure @s
clear @s

scoreboard players reset @s player.board

# 职业模式：重生后只发「职业选择」道具，装备要等玩家自己在对话框里选完才发（见 item/class_pick）
execute if score bw.mode state matches 5 run function minecraft:bedwars/item/give_class_pick
execute if score bw.mode state matches 5 run tellraw @s ["§7右键手里的「职业选择」道具选职业，选完才会发装备"]