title @a[team=build_guess] actionbar [""]
scoreboard players set build_guess.time board -1
execute if score build_guess.state state matches 1 run return run function minecraft:build_guess/round_over
execute if score build_guess.state state matches 2 run return run function minecraft:build_guess/summon
execute if score build_guess.state state matches 3.. run return run function minecraft:build_guess/builder_failed