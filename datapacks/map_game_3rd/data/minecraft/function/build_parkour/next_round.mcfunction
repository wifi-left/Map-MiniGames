execute unless score build_parkour.state state matches 1..99 run return fail
function minecraft:build_parkour/reset
execute as @a[team=build_parkour,gamemode=!creative,tag=!GLOBAL.SPEC] in overworld run function minecraft:build_parkour/p_next_round
tellraw @a[team=build_parkour] ["\n\u00a7e下一轮将在\u00a7c3秒\u00a7e后开始！\n"]

execute as @a[team=build_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
# schedule function build_parkour/summon 5s replace
function minecraft:build_parkour/show_rank
scoreboard players set build_parkour.time board 4
scoreboard players set build_parkour.state state 2
