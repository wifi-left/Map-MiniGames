##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
function minecraft:twolf/items/selector
item replace entity @s hotbar.8 with warped_fungus_on_a_stick[custom_name='"\\u00a7e啥也不干 - \\u00a77右键点击"',custom_data={wolfItem:0},custom_model_data=3]
