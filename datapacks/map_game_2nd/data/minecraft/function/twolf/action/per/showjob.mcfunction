##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s LRS_JOB matches 3 run title @s actionbar ["\u00a7b你的身份是：\u00a7a\u00a7l纵火犯"]
execute if score @s LRS_JOB matches 1 run title @s actionbar ["\u00a7b你的身份是：\u00a7e\u00a7l丘比特"]
execute if score @s LRS_JOB matches 2 run title @s actionbar ["\u00a7b你的身份是：\u00a7a\u00a7l守卫"]
execute if score @s LRS_JOB matches 9 run title @s actionbar ["\u00a7b你的身份是：\u00a7b\u00a7l猎人"]
execute if score @s LRS_JOB matches 8 run title @s actionbar ["\u00a7b你的身份是：\u00a7a\u00a7l骑士"]
execute if score @s LRS_JOB matches 6 run title @s actionbar ["\u00a7b你的身份是：\u00a7a\u00a7l预言家"]
execute if score @s LRS_JOB matches 7 run title @s actionbar ["\u00a7b你的身份是：\u00a7d\u00a7l炸弹人"]
execute as @s[tag=wolf.white] if score @s LRS_JOB matches 4 run title @s actionbar ["\u00a7b你的身份是：\u00a74\u00a7l白狼王"]
execute unless entity @s[tag=wolf.white] if score @s LRS_JOB matches 4 run title @s actionbar ["\u00a7b你的身份是：\u00a7c\u00a7l狼"]
execute if score @s LRS_JOB matches 5 run title @s actionbar ["\u00a7b你的身份是：\u00a7a\u00a7l女巫"]
execute if score @s LRS_JOB matches 0 run title @s actionbar ["\u00a7b你的身份是：\u00a7b\u00a7l民"]

