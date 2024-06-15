##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
tellraw @s ["\u00a7a请选择你要带走的人"]
# 开始倒计时
function minecraft:twolf/items/selector
execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1

item replace entity @s hotbar.8 with warped_fungus_on_a_stick[custom_name='"\\u00a7e放弃带人 - \\u00a77右键点击"',custom_data={wolfItem:12},custom_model_data=3]
