##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add wolf.event board 1
execute unless score wolf.guard board matches 1.. run scoreboard players set wolf.failed state 1
# say [debugdd]2/trigger.mcfunction
execute unless score wolf.guard board matches 1.. run function minecraft:twolf/events/next_event

execute unless score wolf.guard board matches 1.. run return 0
function minecraft:twolf/events/job/guard
