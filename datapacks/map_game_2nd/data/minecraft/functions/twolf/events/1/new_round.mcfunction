execute if score wolf.cupid board matches 1.. if score wolf.round board matches 1 run function minecraft:twolf/events/job/cupid
execute if score wolf.cupid board matches 1.. if score wolf.round board matches 1 run return 0
# guard
scoreboard players set wolf.event board 2

function minecraft:twolf/events/next_event
scoreboard players set wolf.failed state 0