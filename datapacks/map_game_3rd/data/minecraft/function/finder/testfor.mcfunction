scoreboard players set finder.player tick 0
execute as @a[team=finder,gamemode=adventure] run scoreboard players add finder.player tick 1
execute if score finder.player tick matches ..1 run function minecraft:finder/over/timeout