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
scoreboard players add golf.map state 1
execute if score golf.map state matches 4 run scoreboard players set golf.map state 1
execute if score golf.map state matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7a[#1 地图乱作(简单)]"
execute if score golf.map state matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7e[#2 地狱风(普通)]"
execute if score golf.map state matches 3 run data modify block ~ ~ ~ front_text.messages[2] set value "\u00a7c[#3 鸳鸯锅(困难)]"
