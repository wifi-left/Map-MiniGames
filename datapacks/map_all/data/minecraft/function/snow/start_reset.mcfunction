forceload add -47 -99 3 -49
forceload add -63 -63 -166 -167
scoreboard players operation snow.mode board = snow.map state
execute if score snow.map state matches -1 store result score snow.mode board run random value 0..4
execute unless loaded -21 14 -73 run return run schedule function minecraft:snow/start_reset 1s

function minecraft:snow/reset
schedule function minecraft:snow/start_ok 10t append

forceload remove -47 -99 3 -49
forceload remove -63 -63 -166 -167