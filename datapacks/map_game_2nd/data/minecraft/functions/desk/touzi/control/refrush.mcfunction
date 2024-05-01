##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score desk.time board matches ..59 run scoreboard players set desk.time board 60

execute if score @s touzi.count matches ..0 run tellraw @s ["\u00a7c你无法再刷新：你刷新的次数用光了。"]
execute if score @s touzi.count matches ..0 at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
execute if score @s touzi.count matches ..0 run return 0
scoreboard players remove @s touzi.count 1
clear @s
execute if score @s touzi.count matches 4.. run item replace entity @s hotbar.7 with white_dye[custom_data={desk_item:1,desk_clear:1},custom_name='"\\u00a77刷新剩余次数：\\u00a7f4"'] 4
execute if score @s touzi.count matches 3 run item replace entity @s hotbar.7 with green_dye[custom_data={desk_item:1,desk_clear:1},custom_name='"\\u00a77刷新剩余次数：\\u00a7a3"'] 3
execute if score @s touzi.count matches 2 run item replace entity @s hotbar.7 with yellow_dye[custom_data={desk_item:1,desk_clear:1},custom_name='"\\u00a77刷新剩余次数：\\u00a7e2"'] 2
execute if score @s touzi.count matches 1 run item replace entity @s hotbar.7 with orange_dye[custom_data={desk_item:1,desk_clear:1},custom_name='"\\u00a77刷新剩余次数：\\u00a761"'] 1
execute if score @s touzi.count matches ..0 run item replace entity @s hotbar.8 with red_dye[custom_data={desk_item:1,desk_clear:1},custom_name='"\\u00a7c你无法再刷新骰子了"'] 1
execute if score @s touzi.count matches 1.. run function minecraft:desk/touzi/item/item_refrush
function minecraft:desk/touzi/control/refrush_touzi

execute as @s at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
