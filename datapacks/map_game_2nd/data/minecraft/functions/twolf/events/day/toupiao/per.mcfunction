##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function twolf/action/tagselected
scoreboard players add @a[tag=wolf.selected] LRS_ZT 1
tag @a remove wolf.selected
scoreboard players add wolf.peoplecount board 1

