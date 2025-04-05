
execute in golfworld run forceload add -98 87 -20 32
execute if score golf.map board matches 1 run function minecraft:golf/resets/1
execute if score golf.map board matches 2 run function minecraft:golf/resets/2
execute in golfworld run forceload remove -98 87 -20 32
