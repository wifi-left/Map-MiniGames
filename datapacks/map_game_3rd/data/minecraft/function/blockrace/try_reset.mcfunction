# backup area
execute in minecraft:airworld run forceload add 388 240 142 258
# play area
execute in minecraft:airworld run forceload add 142 212 388 194
execute in minecraft:airworld if loaded 387 -36 202 if loaded 386 -57 249 run return run function minecraft:blockrace/reset
schedule function minecraft:blockrace/try_reset 1s