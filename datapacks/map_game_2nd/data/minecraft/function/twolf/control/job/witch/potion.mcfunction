##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0

tellraw @a[tag=wolf.tip,gamemode=spectator] ["",{"selector":"@s"},"§c 毒死了 ",{"selector":"@a[tag=wolf.selected]"}]
tellraw @a[tag=wolf.acting] ["§c你毒死了 ",{"selector":"@a[tag=wolf.selected]"}]
scoreboard players remove wolf.witch.kill board 1

tag @a[tag=wolf.selected] add wolf.poisoned
function twolf/events/event_over

