##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
tellraw @a[tag=wolf.tip] ["§d[!] ",{"selector":"@s"},"§6 确定投票给了 ",{"selector":"@a[tag=wolf.selected]"}]
tag @a remove wolf.selected
tag @s add wolf.toupaoed
clear @s
function minecraft:twolf/control/day/detect


