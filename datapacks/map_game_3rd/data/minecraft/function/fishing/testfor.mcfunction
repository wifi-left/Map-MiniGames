scoreboard players set fishing.player tick 0
execute as @a[team=fishing,gamemode=adventure] run scoreboard players add fishing.player tick 1
execute if score fishing.player tick matches ..1 run function minecraft:fishing/over/timeout