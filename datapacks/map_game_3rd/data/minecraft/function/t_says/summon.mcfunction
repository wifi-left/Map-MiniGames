scoreboard players set t_says.state state 3
execute as @a[team=t_says] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
scoreboard players set t_says.player tick 0
execute as @a[team=t_says,gamemode=adventure] run scoreboard players add t_says.player tick 1
title @a[team=t_says] reset

function minecraft:t_says/scene/random_scene
scoreboard players set t_says.time board 5
# execute if score t_says.type board matches 2 run scoreboard players set t_says.time board 5
scoreboard players set t_says.say board 0