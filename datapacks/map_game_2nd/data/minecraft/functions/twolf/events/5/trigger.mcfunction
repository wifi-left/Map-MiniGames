scoreboard players add wolf.event board 1
execute unless score wolf.witch board matches 1.. run scoreboard players set wolf.failed state 1
execute unless score wolf.witch board matches 1.. run function minecraft:twolf/events/next_event

execute unless score wolf.witch board matches 1.. run return 0
function minecraft:twolf/events/job/witch