##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
scoreboard players remove wolf.witch.rescue board 1
tag @a[tag=wolf.killed] add wolf.rescued
tellraw @s ["§a你救援了 ",{"selector":"@a[tag=wolf.rescued]"}]
tellraw @a[tag=wolf.tip,gamemode=spectator] [{"selector":"@s"},"§a 救援了 ",{"selector":"@a[tag=wolf.rescued]"}]
function twolf/action/per/tpback
function twolf/events/event_over

