function minecraft:small_games/total/wur/display_games
execute as @a[team=play.total] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
clear @a[team=play.total]
scoreboard players set gametotal.time tick 6
scoreboard players set gametotal state 4