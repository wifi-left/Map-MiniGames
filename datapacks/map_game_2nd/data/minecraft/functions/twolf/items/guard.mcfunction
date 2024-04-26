clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
tellraw @s ["\u00a7a请选择守卫的人"]
execute if entity @a[tag=wolf.lastprotected] run tellraw @s ["\u00a7c你上次已经保护过：",{"selector":"@a[tag=wolf.lastprotected]"},"\u00a7c，所以你今晚不能再次保护他。"]
# 开始倒计时

function minecraft:twolf/items/selector
execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1

item replace entity @s hotbar.8 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e啥也不干 - \\u00a77右键点击"'},wolfItem:0,CustomModelData:3}
