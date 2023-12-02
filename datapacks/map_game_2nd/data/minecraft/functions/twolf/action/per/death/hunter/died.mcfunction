# scoreboard players set wolf.event board 18
function minecraft:twolf/action/per/death/hunter_died
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board 4
scoreboard players operation wolf.event board = wolf.save.event board
schedule clear #wolffunctions
function minecraft:twolf/action/tppoint_day
# schedule 