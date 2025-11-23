scoreboard players set random_parkour.player tick 0
execute as @a[team=random_parkour,gamemode=adventure] run scoreboard players add random_parkour.player tick 1
execute if score random_parkour.player tick matches ..0 run function minecraft:random_parkour/over/normal