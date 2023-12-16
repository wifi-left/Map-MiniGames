# execute as @a[gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/tpback_real
# scoreboard players operation wolf.time board = wolf.resttime board
execute unless score wolf.event board matches 12 run tellraw @a[tag=wolf.tip] ["\u00a7f\u00a7l直接进入黑夜。"]
scoreboard players set wolf.event board 0
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board 4
# execute as @a[tag=wolf.tip,gamemode=adventure] run function twolf/action
clear @a[tag=wolf.tip]
