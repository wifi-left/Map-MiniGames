execute unless score build_guess.state state matches 1..99 run return fail
function minecraft:build_guess/reset
execute as @a[team=build_guess,gamemode=!creative,tag=!GLOBAL.SPEC] in overworld run function minecraft:build_guess/p_next_round
data modify storage minecraft:temp build_guess.tip set value "下一轮即将开始"
scoreboard players set build_guess.any_success board 0

tellraw @a[team=build_guess] ["\n\u00a7e下一轮将在\u00a7c3秒\u00a7e后开始！\n"]
execute as @a[team=build_guess] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
# schedule function build_guess/summon 5s replace
function minecraft:build_guess/show_rank
scoreboard players set build_guess.time board 4
scoreboard players set build_guess.state state 2
tag @a remove build_guess.guesser
tag @a remove build_guess.builder
