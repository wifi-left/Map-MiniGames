title @a[team=chair.killer] actionbar [""]
title @a[team=chair] actionbar [""]
scoreboard players set chair.time board -1
execute if score chair.state state matches 1 run return run function minecraft:chair/round_over
execute if score chair.state state matches 2 run return run function minecraft:chair/summon
execute if score chair.state state matches 3 run return run function minecraft:chair/next_round
