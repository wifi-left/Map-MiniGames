##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add wolf.event board 1
# say [debugdd]6/trigger.mcfunction
execute unless score wolf.predictor board matches 1.. run scoreboard players set wolf.failed state 1
execute unless score wolf.predictor board matches 1.. run function minecraft:twolf/events/next_event

execute unless score wolf.predictor board matches 1.. run return 0
function minecraft:twolf/events/job/predictor

