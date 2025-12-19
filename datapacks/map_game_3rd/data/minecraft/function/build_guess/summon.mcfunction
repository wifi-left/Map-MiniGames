function minecraft:build_guess/reset
# BUILDING
function minecraft:build_guess/during/random_word
function minecraft:build_guess/during/general_tip

execute as @a[team=build_guess] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tag @a remove build_guess.builder
tag @a remove build_guess.guesser


execute as @a[team=build_guess,tag=build_guess.nokiller,limit=1,sort=random,gamemode=spectator,tag=!GLOBAL.SPEC] at @s run function minecraft:build_guess/become_builder

execute unless entity @a[team=build_guess,tag=build_guess.builder,gamemode=adventure] run return run function minecraft:build_guess/over

execute as @a[team=build_guess,tag=!build_guess.builder,gamemode=spectator,tag=!GLOBAL.SPEC] at @s run function minecraft:build_guess/become_runner


scoreboard players set build_guess.time board 181

# build_guess.time state

scoreboard players set build_guess.player tick 0
execute as @a[team=build_guess,tag=!GLOBAL.SPEC] run scoreboard players add build_guess.player tick 1
execute if score build_guess.player tick matches 6.. run scoreboard players set build_guess.time board 121

execute if score build_guess.time state matches 1 run scoreboard players set build_guess.time board 61
execute if score build_guess.time state matches 2 run scoreboard players set build_guess.time board 121
execute if score build_guess.time state matches 3 run scoreboard players set build_guess.time board 181
execute if score build_guess.time state matches 4 run scoreboard players set build_guess.time board 241

scoreboard players set build_guess.state state 3
