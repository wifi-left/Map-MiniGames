function minecraft:build_parkour/reset
# BUILDING
execute as @a[team=build_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tag @a remove build_parkour.builder


execute as @a[team=build_parkour,tag=build_parkour.nokiller,limit=1,sort=random,gamemode=spectator,tag=!GLOBAL.SPEC] at @s run function minecraft:build_parkour/become_builder

execute unless entity @a[team=build_parkour,gamemode=adventure] run return run function minecraft:build_parkour/over


scoreboard players set build_parkour.time board 241

# build_parkour.time state

scoreboard players set build_parkour.player tick 0
execute as @a[team=build_parkour,tag=!GLOBAL.SPEC] run scoreboard players add build_parkour.player tick 1
execute if score build_parkour.player tick matches 6.. run scoreboard players set build_parkour.time board 121
execute if score build_parkour.player tick matches 12.. run scoreboard players set build_parkour.time board 91
execute if score build_parkour.player tick matches 18.. run scoreboard players set build_parkour.time board 61

execute if score build_parkour.time state matches 1 run scoreboard players set build_parkour.time board 61
execute if score build_parkour.time state matches 2 run scoreboard players set build_parkour.time board 121
execute if score build_parkour.time state matches 3 run scoreboard players set build_parkour.time board 181
execute if score build_parkour.time state matches 4 run scoreboard players set build_parkour.time board 241

scoreboard players set build_parkour.state state 3
