scoreboard players set elytra.player tick 0
execute as @a[team=elytra,gamemode=adventure] run scoreboard players add elytra.player tick 1
execute if score elytra.player tick matches ..0 run function minecraft:elytra/over/timeout