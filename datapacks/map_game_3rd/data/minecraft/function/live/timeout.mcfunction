title @a[team=live.killer] actionbar [""]
title @a[team=live] actionbar [""]
scoreboard players set live.time board -1
execute if score live.state state matches 1 run return run function minecraft:live/round_over
execute if score live.state state matches 2 run return run function minecraft:live/summon
