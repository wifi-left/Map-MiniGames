execute in airworld run forceload add 202 39 240 1
execute in airworld if loaded 202 -35 39 run return run function minecraft:disaster/snow/reset
schedule function minecraft:disaster/snow/try_reset 1s