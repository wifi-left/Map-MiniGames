execute unless score live.state state matches 1..99 run return fail

execute as @a[team=live,gamemode=!creative,tag=!GLOBAL.SPEC] in overworld run function minecraft:live/p_next_round

tellraw @a[team=live] ["\n\u00a7e下一轮将在\u00a7c5秒\u00a7e后开始！\n"]
execute as @a[team=live] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
# schedule function live/summon 5s replace
function minecraft:live/show_rank
scoreboard players set live.time board 6
scoreboard players set live.state state 2
