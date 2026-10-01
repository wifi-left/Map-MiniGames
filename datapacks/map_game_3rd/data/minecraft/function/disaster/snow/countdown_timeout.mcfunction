execute if score disaster.snow.state state matches 2 run return run function minecraft:disaster/snow/step/true_start
execute if score disaster.snow.state state matches 3 run return run function minecraft:disaster/snow/step/ramp_start
execute if score disaster.snow.state state matches 4..11 run return run function minecraft:disaster/snow/step/speed_on
execute if score disaster.snow.state state matches 12 run return run function minecraft:disaster/snow/step/speed_on_last_before_pvp
execute if score disaster.snow.state state matches 13 run return run function minecraft:disaster/snow/step/pvp_on
execute if score disaster.snow.state state matches 25 run return run function minecraft:disaster/snow/shrink/trigger
