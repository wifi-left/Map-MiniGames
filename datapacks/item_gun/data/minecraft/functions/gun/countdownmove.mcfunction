execute as @s at @s run function gun/move
scoreboard players remove tmp.countdown board 1
execute if score tmp.countdown board matches 1.. run function gun/countdownmove