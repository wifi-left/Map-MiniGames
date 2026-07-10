scoreboard players set random_parkour.time tick 601

scoreboard players set random_parkour.player tick 0
execute as @a[team=random_parkour,gamemode=adventure] run scoreboard players add random_parkour.player tick 1
execute if score random_parkour.player tick matches 10.. run scoreboard players set random_parkour.time tick 601
execute if score random_parkour.player tick matches 20.. run scoreboard players set random_parkour.time tick 901
execute if score random_parkour.player tick matches 30.. run scoreboard players set random_parkour.time tick 1201

function minecraft:random_parkour/true_start
scoreboard players set random_parkour.state state 3
execute as @a[team=random_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
