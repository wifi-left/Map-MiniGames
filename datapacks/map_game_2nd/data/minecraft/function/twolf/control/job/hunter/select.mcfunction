##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute as @s[tag=wolf.selected] run tellraw @s ["§c你不能选择自己"]
execute as @s[tag=wolf.selected] run return 0
tellraw @a[tag=wolf.tip,tag=!wolf.acting] ["\n",{"selector":"@s"},"§c 带走了 ",{"selector":"@a[tag=wolf.selected]"},"\n"]
tellraw @a[tag=wolf.acting] ["§c你带走了 ",{"selector":"@a[tag=wolf.selected]"}]
execute as @a[tag=wolf.selected] run function twolf/action/per/death/died_no
# tag @a[tag=wolf.selected] add wolf.protected
# function twolf/events/event_over
function twolf/action/per/death/hunter/died

