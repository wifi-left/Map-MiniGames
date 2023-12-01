clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
function minecraft:twolf/items/selector
item replace entity @s hotbar.6 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e放弃投票 - \\u00a77右键点击"'},wolfItem:0,CustomModelData:3}
execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1
tellraw @s ["\u00a7a您可以使用工具进行投票。"]
