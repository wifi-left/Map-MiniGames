clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
tellraw @s ["\u00a7a请选择你们今晚要杀死的人"]
# 开始倒计时

function minecraft:twolf/items/selector
execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1

item replace entity @s hotbar.8 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e啥也不干 - \\u00a77右键点击"'},wolfItem:0,CustomModelData:3}