clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
execute as @s[tag=!wolf.toupaoed] run function minecraft:twolf/items/selector
item replace entity @s hotbar.8 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e放弃投票 - \\u00a77右键点击"'},wolfItem:0,CustomModelData:3}

# 特殊工具

execute if score @s[tag=wolf.white] LRS_JOB matches 4 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e白狼之牙 - \\u00a77右键发动技能"'},wolfItem:6,CustomModelData:4}
execute if score @s LRS_JOB matches 8 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick{display:{Name:'"\\u00a7e骑士之刃 - \\u00a77右键发动技能"'},wolfItem:7,CustomModelData:4}

execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1
tellraw @s ["\u00a7a您可以使用工具进行投票。"]
