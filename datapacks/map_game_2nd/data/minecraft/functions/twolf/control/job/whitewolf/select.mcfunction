function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute as @s[tag=wolf.selected] run tellraw @s ["\u00a7c你不能选择自己"]
execute as @s[tag=wolf.selected] run return 0
tellraw @a[tag=wolf.tip,tag=!wolf.acting] ["",{"selector":"@s"},"\u00a7c 带走了 ",{"selector":"@a[tag=wolf.selected]"}]
tellraw @a[tag=wolf.acting] ["\u00a7c你带走了 ",{"selector":"@a[tag=wolf.selected]"}]
function twolf/action/per/death/white_wolf_died
function twolf/action/special_day_night
execute as @a[tag=wolf.selected] run function twolf/action/per/death/died_no
# tag @a[tag=wolf.selected] add wolf.protected
# function twolf/events/event_over