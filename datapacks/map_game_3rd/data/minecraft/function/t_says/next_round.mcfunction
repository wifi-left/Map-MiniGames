function minecraft:t_says/reset

scoreboard players add t_says.round board 1
execute if score t_says.round board > t_says.round state run return run function minecraft:t_says/over
execute unless score t_says.state state matches 1..99 run return fail

execute as @a[team=t_says,gamemode=!creative,tag=!GLOBAL.SPEC] in overworld run function minecraft:t_says/p_next_round
# tellraw @a[team=t_says] ["\n\u00a7e下一轮将在\u00a7c5秒\u00a7e后开始！\n"]
execute as @a[team=t_says] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
# schedule function t_says/summon 5s replace
function minecraft:t_says/show_rank
scoreboard players set t_says.time board 3
scoreboard players set t_says.state state 2
scoreboard players set t_says.has_finished board 0
tellraw @a[team=t_says] ["\n\n\u00a7d不要相信T氏的话 \u00a7e(",{score:{name:"t_says.round",objective:board},color:red},"\u00a7e/",{score:{name:"t_says.round",objective:state},color:red},"\u00a7e)"]
