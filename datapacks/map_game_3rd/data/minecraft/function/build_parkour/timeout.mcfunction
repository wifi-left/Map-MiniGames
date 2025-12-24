title @a[team=build_parkour] actionbar [""]
scoreboard players set build_parkour.time board -1
execute if score build_parkour.state state matches 1 run return run function minecraft:build_parkour/round_over
execute if score build_parkour.state state matches 2 run return run function minecraft:build_parkour/summon
execute if score build_parkour.state state matches 3 run return run function minecraft:build_parkour/builder_timeout
execute if score build_parkour.state state matches 4 run return run function minecraft:build_parkour/builder_failed
execute if score build_parkour.state state matches 5 run return run execute as @a[team=build_parkour,gamemode=adventure] run function minecraft:build_parkour/died
execute if score build_parkour.state state matches 6 run return run function minecraft:build_parkour/builder_failed
