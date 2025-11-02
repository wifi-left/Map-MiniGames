scoreboard players set pillar.player tick 0
execute as @a[team=pillar,gamemode=survival] run scoreboard players add pillar.player tick 1
execute if score pillar.player tick matches ..1 run function minecraft:pillar/over/normal