##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score wolf.cupid board matches 1.. if score wolf.round board matches 1 run function minecraft:twolf/events/job/cupid
execute if score wolf.cupid board matches 1.. if score wolf.round board matches 1 run return 0
# guard
scoreboard players set wolf.event board 2
# say new_round
# say [debugdd]new_round.mcfunction
function minecraft:twolf/events/next_event
scoreboard players set wolf.failed state 0
