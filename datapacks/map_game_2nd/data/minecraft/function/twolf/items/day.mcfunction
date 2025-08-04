##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
execute as @s[tag=!wolf.toupaoed] run function minecraft:twolf/items/selector
item replace entity @s hotbar.8 with warped_fungus_on_a_stick[custom_name="\u00a7e放弃投票 - \u00a77右键点击",custom_data={wolfItem:0},custom_model_data={floats:[3f]}]

# 特殊工具

execute if score @s[tag=wolf.white] LRS_JOB matches 4 run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_name="\u00a7e白狼之牙 - \u00a77右键发动技能",custom_data={wolfItem:6},custom_model_data={floats:[4f]}]
execute if score @s LRS_JOB matches 8 unless entity @a[tag=wolf.knight,team=wolfpeople,gamemode=adventure] run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_name="\u00a7e骑士之刃 - \u00a77右键发动技能",custom_data={wolfItem:7},custom_model_data={floats:[4f]}]
# wolf.setting.knight - 1: 只有一次
execute if score @s LRS_JOB matches 8 if entity @a[tag=wolf.knight,team=wolfpeople,gamemode=adventure] unless score wolf.setting.knight state matches 1.. run item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_name="\u00a7e骑士之刃 - \u00a77右键发动技能",custom_data={wolfItem:7},custom_model_data={floats:[4f]}]

execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1
tellraw @s ["§a您可以使用工具进行投票。"]


