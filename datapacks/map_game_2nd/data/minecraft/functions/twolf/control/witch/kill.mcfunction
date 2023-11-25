clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
function minecraft:twolf/items/selector
item replace entity @s hotbar.8 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e啥也不干 - \\u00a77右键点击"'},wolfItem:0,CustomModelData:3}