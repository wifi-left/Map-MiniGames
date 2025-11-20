scoreboard players set mining.player tick 0
execute as @a[team=mining,gamemode=survival] run scoreboard players add mining.player tick 1
execute as @a[team=mining,gamemode=adventure] run scoreboard players add mining.player tick 1
execute if score mining.player tick matches ..1 run function minecraft:mining/over/normal