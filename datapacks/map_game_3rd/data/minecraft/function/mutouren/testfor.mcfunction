scoreboard players set mutouren.player tick 0
execute as @a[team=mutouren,gamemode=adventure] run scoreboard players add mutouren.player tick 1
execute if score mutouren.player tick matches ..0 run function minecraft:mutouren/over/timeout