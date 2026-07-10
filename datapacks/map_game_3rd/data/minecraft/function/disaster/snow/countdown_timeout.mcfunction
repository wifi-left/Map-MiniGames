execute if score disaster.snow.state state matches 2 run return run function minecraft:disaster/snow/step/true_start
execute if score disaster.snow.state state matches 3..17 run return run function minecraft:disaster/snow/step/speed_on
execute if score disaster.snow.state state matches 18 run return run function minecraft:disaster/snow/step/speed_on_last_before_pvp
execute if score disaster.snow.state state matches 19 run return run function minecraft:disaster/snow/step/pvp_on
execute if score disaster.snow.state state matches 25 run return run function minecraft:disaster/snow/step/speed_on_after_pvp