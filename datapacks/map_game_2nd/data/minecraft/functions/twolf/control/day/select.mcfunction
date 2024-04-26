function twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
tellraw @a[tag=wolf.tip] ["\u00a7d[!] ",{"selector":"@s"},"\u00a76 确定投票给了 ",{"selector":"@a[tag=wolf.selected]"}]
tag @a remove wolf.selected
tag @s add wolf.toupaoed
clear @s
function minecraft:twolf/control/day/detect
