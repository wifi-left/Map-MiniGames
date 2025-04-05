scoreboard players set hide.anicount board 0
execute as @e[tag=hide.animals] at @s run scoreboard players add hide.anicount board 1
execute if score hide.anicount board matches ..30 run function hideseek/during/spawnanimal
