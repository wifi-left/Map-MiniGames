##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

playsound ui.button.click player @s ~ ~ ~ 1 1 1
scoreboard players add boom.map state 1
execute if score boom.map state matches 7 run scoreboard players set boom.map state 1
execute if score boom.map state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7a[#1]"
execute if score boom.map state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7b[#2]"
execute if score boom.map state matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7c[#3]"
execute if score boom.map state matches 4 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7d[#4]"
execute if score boom.map state matches 5 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7e[#5]"
execute if score boom.map state matches 6 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7f[#6]"
