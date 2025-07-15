##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# scoreboard players set wolf.event board 18
function minecraft:twolf/action/per/death/hunter_died
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board 4
scoreboard players operation wolf.event board = wolf.save.event board
schedule clear twolf/events/1/new_round
schedule clear twolf/events/next_event
schedule clear minecraft:twolf/events/1/new_round
function minecraft:twolf/action/tppoint_day
# schedule

