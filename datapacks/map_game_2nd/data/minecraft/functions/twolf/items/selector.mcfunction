##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
item replace entity @s hotbar.0 with warped_fungus_on_a_stick[custom_name='"\\u00a7b选择玩家 - \\u00a77右键点击"',custom_data={wolfItem:1},custom_model_data=5]
item replace entity @s hotbar.1 with warped_fungus_on_a_stick[custom_name='"\\u00a7a确认选择 - \\u00a77右键点击"',custom_data={wolfItem:2},custom_model_data=4]
item replace entity @s hotbar.2 with warped_fungus_on_a_stick[custom_name='"\\u00a7c取消选择 - \\u00a77右键点击"',custom_data={wolfItem:3},custom_model_data=6]
# tellraw @s ["\u00a78 | \u00a7b\u00a7l选择：\u00a76使用手上的工具选择\u00a7d玩家玩偶\u00a76，选择后请使用 \u00a7a“确认选择” \u00a76确认操作\n\u00a78 | \u00a76当前活跃（正在操作的）玩家将会被\u00a7b钻石护腿\u00a76标记。\n\u00a78 | \u00a76当前选择玩家将会被有颜色的\u00a7e皮革盔甲\u00a76标记。"]
scoreboard players reset @s LRS_CS
