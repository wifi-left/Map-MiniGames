scoreboard players set play.snow.player tick 0 
execute as @a[team=play.snow,gamemode=adventure] run scoreboard players add play.snow.player tick 1
execute if score play.snow.player tick matches ..1 unless score play.snow.debug state matches 1..1 run function minecraft:snow/over