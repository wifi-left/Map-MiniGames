scoreboard players set pillar.time tick 600

scoreboard players set pillar.player tick 0
execute as @a[team=pillar,gamemode=survival] run scoreboard players add pillar.player tick 1

execute if score pillar.player tick matches 10.. run scoreboard players set pillar.time tick 900
execute if score pillar.player tick matches 20.. run scoreboard players set pillar.time tick 1200
execute as @a[team=pillar,gamemode=survival] at @s run function minecraft:pillar/map/true_start

scoreboard players set pillar.state state 3
execute as @a[team=pillar] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0