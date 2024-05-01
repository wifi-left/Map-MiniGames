##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute unless score wolf.arsonist board matches 1.. run
scoreboard players add wolf.event board 1
# say [debugdd]3/trigger.mcfunction
execute unless score wolf.arsonist board matches 1.. run scoreboard players set wolf.failed state 1
execute unless score wolf.arsonist board matches 1.. run function minecraft:twolf/events/next_event
execute unless score wolf.arsonist board matches 1.. run return 0

# wolf.setting.arsonist - 1: 只有一次
execute if score wolf.round board matches 2.. if score wolf.setting.arsonist state matches 1.. run scoreboard players set wolf.failed state 1
execute if score wolf.round board matches 2.. if score wolf.setting.arsonist state matches 1.. run function minecraft:twolf/events/next_event
execute if score wolf.round board matches 2.. if score wolf.setting.arsonist state matches 1.. run return 0

function minecraft:twolf/events/job/arsonist
