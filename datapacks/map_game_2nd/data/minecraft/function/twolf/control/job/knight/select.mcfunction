##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute as @s[tag=wolf.selected] run tellraw @s ["§c你不能选择自己"]
execute as @s[tag=wolf.selected] run return 0
tellraw @a[tag=wolf.tip,tag=!wolf.acting] ["\n",{"selector":"@s"},"§6 与 ",{"selector":"@a[tag=wolf.selected]"}," §6展开了对决\n"]
tellraw @a[tag=wolf.acting] ["§6你与 ",{"selector":"@a[tag=wolf.selected]"},"§6 开始对决。"]
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 as @a[tag=wolf.selected] run tellraw @a[tag=wolf.tip] ["§a§l骑士打败了它。对方是狼。"]
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 as @a[tag=wolf.selected] run function twolf/action/per/death/wolf_died
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run tellraw @a[tag=wolf.tip] ["§e§l骑士与他不分上下，对方是炸弹人。\n骑士和炸弹人都死了。"]
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run function twolf/action/per/death/knight_died
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 as @a[tag=wolf.selected] run function twolf/action/per/death/boom_died
# say next
execute unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run tellraw @a[tag=wolf.tip] ["§c§l骑士输了，对方是好人。"]
execute unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run function twolf/action/per/death/knight_died
# execute as @a[tag=wolf.selected] run function twolf/action/per/death/died
# say next#2

# tag @a[tag=wolf.selected] add wolf.protected
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 run function twolf/action/special_day_night
execute if score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run function twolf/action/special_day_night
# function twolf/events/event_over
execute unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 4 unless score @a[tag=wolf.selected,limit=1] LRS_JOB matches 7 run function twolf/action/special_day_back
# say fin

