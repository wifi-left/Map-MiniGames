scoreboard players add wolf.round board 1
scoreboard players set wolf.event board 0
function minecraft:twolf/time/night
schedule function minecraft:twolf/events/1/new_round 5s
execute as @a[tag=wolf.tip] at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 1 1 0