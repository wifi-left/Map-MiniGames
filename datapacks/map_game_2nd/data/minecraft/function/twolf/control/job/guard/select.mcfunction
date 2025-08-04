##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0

execute if entity @a[tag=wolf.selected,tag=wolf.lastprotected] run tellraw @a[tag=wolf.acting] ["§d[!] §c你无法守护 ",{"selector":"@a[tag=wolf.selected]"},"§c，因为你昨晚守护了他。"]
execute if entity @a[tag=wolf.selected,tag=wolf.lastprotected] run return 0

tellraw @a[tag=wolf.tip,gamemode=spectator] ["",{"selector":"@s"},"§6 守护了 ",{"selector":"@a[tag=wolf.selected]"}]
tellraw @a[tag=wolf.acting] ["§6你守护了 ",{"selector":"@a[tag=wolf.selected]"}]

tag @a remove wolf.lastprotected
tag @a[tag=wolf.selected] add wolf.protected
function twolf/events/event_over

