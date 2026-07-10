title @a[team=pacman.killer] actionbar [""]
title @a[team=pacman] actionbar [""]
scoreboard players set pacman.time board -1
execute if score pacman.state state matches 1 run return run function minecraft:pacman/round_over
execute if score pacman.state state matches 2 run return run function minecraft:pacman/summon
