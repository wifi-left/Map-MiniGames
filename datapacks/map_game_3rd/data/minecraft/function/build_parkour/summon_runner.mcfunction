execute in parkourworld run fill -14 -45 303 -44 -63 333 air replace scaffolding strict
# PARKOURING
tellraw @a[team=build_parkour] ["\u00a7a建造者成功通过跑酷。该其他玩家进行挑战了。"]
scoreboard players set build_parkour.any_success board 0
execute as @a[team=build_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1



execute as @a[team=build_parkour,gamemode=spectator,tag=!GLOBAL.SPEC,tag=!build_parkour.builder] at @s run function minecraft:build_parkour/become_runner

execute unless entity @a[team=build_parkour,gamemode=adventure] run function minecraft:build_parkour/over



scoreboard players set build_parkour.state state 5
scoreboard players set build_parkour.time board 121
