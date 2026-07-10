execute in parkourworld run fill -14 -45 303 -44 -63 333 air replace scaffolding strict
tellraw @a[team=build_parkour] ["\u00a7a建造者已完成建造跑酷。该Ta进行挑战了。"]
execute as @a[gamemode=adventure,team=build_parkour] at @s run function minecraft:build_parkour/become_runner
scoreboard players set build_parkour.state state 4
scoreboard players set build_parkour.time board 121
scoreboard players set build_parkour.any_success board -10
