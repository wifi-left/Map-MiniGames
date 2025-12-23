gamemode spectator @s
tellraw @a[team=one_arrow] [{selector:"@s"},"\u00a77淘汰了。"]
tellraw @s ["\u00a7c对不起，你淘汰了。"]
tp @s -79 32 200 0 90
scoreboard players set one_arrow.player tick 0
execute as @a[team=one_arrow,gamemode=adventure] run scoreboard players add one_arrow.player tick 1
effect give @s instant_health 1 25 true
clear @s
execute if score one_arrow.player tick matches 0 run function minecraft:small_games/total/win_score {score:3}
execute if score one_arrow.player tick matches 1 run function minecraft:small_games/total/win_score {score:2}
execute if score one_arrow.player tick matches 2 run function minecraft:small_games/total/win_score {score:1}