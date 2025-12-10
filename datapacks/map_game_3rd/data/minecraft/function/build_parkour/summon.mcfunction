function minecraft:build_parkour/reset
# BUILDING
execute as @a[team=build_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tag @a remove build_parkour.builder
tellraw @a [{text:""}]

execute as @a[team=build_parkour,tag=build_parkour.nokiller,limit=1,sort=random,gamemode=spectator,tag=!GLOBAL.SPEC] at @s run function minecraft:build_parkour/become_builder

execute unless entity @a[team=build_parkour,gamemode=adventure] run return run function minecraft:build_parkour/over
tellraw @a [{text:""}]

scoreboard players set build_parkour.time board 241
scoreboard players set build_parkour.state state 3
