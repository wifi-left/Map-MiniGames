scoreboard players set disaster.snow.player tick 0
execute as @a[team=disaster.snow,gamemode=adventure] run scoreboard players add disaster.snow.player tick 1
execute if score disaster.snow.player tick matches ..1 run function minecraft:disaster/snow/over/over