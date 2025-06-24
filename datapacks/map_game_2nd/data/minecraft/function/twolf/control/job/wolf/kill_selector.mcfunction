##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless entity @a[tag=wolf.selected,gamemode=adventure] as @a[tag=wolf.acting] at @s run function minecraft:twolf/control/job/wolf/next
execute unless entity @a[tag=wolf.acting,gamemode=adventure] run function minecraft:twolf/control/job/wolf/next
execute unless entity @a[tag=wolf.selected,gamemode=adventure] run return 0
# 杀死他！
tag @a[tag=wolf.selected] add wolf.killed
tellraw @a[tag=wolf.acting] ["§c你们杀死了 ",{"selector":"@a[tag=wolf.killed]"}]
tellraw @a[tag=wolf.tip,gamemode=spectator] [{"selector":"@a[tag=wolf.acting]"},"§c（狼人）杀死了 ",{"selector":"@a[tag=wolf.killed]"}]
function minecraft:twolf/control/job/wolf/next

