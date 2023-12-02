execute if score wolf.cupid board matches 1.. if score wolf.round board matches 1 run function minecraft:twolf/events/job/cupid
execute if score wolf.cupid board matches 1.. if score wolf.round board matches 1 run return 0
# guard
execute if score wolf.event board matches ..0 if score wolf.guard board matches 1.. run scoreboard players set wolf.event board 2
# arsonist
execute if score wolf.event board matches ..0 if score wolf.guard arsonist matches 1.. run scoreboard players set wolf.event board 3
# wolf
execute if score wolf.event board matches ..0 if score wolf.wolf board matches 1.. run scoreboard players set wolf.event board 4
# witch
execute if score wolf.event board matches ..0 if score wolf.witch board matches 1.. run scoreboard players set wolf.event board 5
# predictor
execute if score wolf.event board matches ..0 if score wolf.predictor board matches 1.. run scoreboard players set wolf.event board 6
function minecraft:twolf/events/next_event
scoreboard players set wolf.failed state 0