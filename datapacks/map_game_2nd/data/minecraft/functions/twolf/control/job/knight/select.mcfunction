function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute as @s[tag=wolf.selected] run tellraw @s ["\u00a7c你不能选择自己"]
execute as @s[tag=wolf.selected] run return 0
tellraw @a[tag=wolf.tip,tag=!wolf.acting] ["",{"selector":"@s"},"\u00a76 与 ",{"selector":"@a[tag=wolf.selected]"}," \u00a76展开了对决"]
tellraw @a[tag=wolf.acting] ["\u00a76你与 ",{"selector":"@a[tag=wolf.selected]"},"\u00a76 开始对决。"]
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 as @a[tag=wolf.selected] run tellraw @a[tag=wolf.tip] ["\u00a7a\u00a7l骑士打败了它。对方是狼。"]
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 as @a[tag=wolf.selected] run function twolf/action/per/death/wolf_died 
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run tellraw @a[tag=wolf.tip] ["\u00a7e\u00a7l骑士与他不分上下，对方是炸弹人。\n骑士和炸弹人都死了。"]
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run function twolf/action/per/death/knight_died 
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 as @a[tag=wolf.selected] run function twolf/action/per/death/boom_died 

execute unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run tellraw @a[tag=wolf.tip] ["\u00a7c\u00a7l骑士输了，对方是好人。"]
execute unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run function twolf/action/per/death/knight_died 
# execute as @a[tag=wolf.selected] run function twolf/action/per/death/died

# tag @a[tag=wolf.selected] add wolf.protected
function twolf/action/special_day_night
# function twolf/events/event_over