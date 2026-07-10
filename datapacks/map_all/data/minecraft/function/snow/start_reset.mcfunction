scoreboard players operation snow.mode board = snow.map state
execute if score snow.map state matches -1 store result score snow.mode board run random value 0..4
function minecraft:snow/reset
schedule function minecraft:snow/start_ok 10t append