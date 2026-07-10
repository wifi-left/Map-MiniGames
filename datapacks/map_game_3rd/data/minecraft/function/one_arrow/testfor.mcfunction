scoreboard players set one_arrow.player tick 0
execute as @a[team=one_arrow,gamemode=adventure] run scoreboard players add one_arrow.player tick 1
execute if score one_arrow.player tick matches ..1 run function minecraft:one_arrow/over/over