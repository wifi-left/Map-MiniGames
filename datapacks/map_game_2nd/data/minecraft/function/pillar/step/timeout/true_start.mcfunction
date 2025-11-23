scoreboard players set pillar.time tick 300

scoreboard players set pillar.player tick 0
execute as @a[team=pillar,gamemode=survival] run scoreboard players add pillar.player tick 1

execute if score pillar.player tick matches 10.. run scoreboard players set pillar.time tick 600
execute if score pillar.player tick matches 20.. run scoreboard players set pillar.time tick 900

execute if score pillar.time state matches 1 run scoreboard players set pillar.time tick 60
execute if score pillar.time state matches 2 run scoreboard players set pillar.time tick 120
execute if score pillar.time state matches 3 run scoreboard players set pillar.time tick 180
execute if score pillar.time state matches 4 run scoreboard players set pillar.time tick 240
execute if score pillar.time state matches 5 run scoreboard players set pillar.time tick 300
execute if score pillar.time state matches 6 run scoreboard players set pillar.time tick 360
execute if score pillar.time state matches 7 run scoreboard players set pillar.time tick 420
execute if score pillar.time state matches 8 run scoreboard players set pillar.time tick 480
execute if score pillar.time state matches 9 run scoreboard players set pillar.time tick 540
execute if score pillar.time state matches 10 run scoreboard players set pillar.time tick 600
execute if score pillar.time state matches 11 run scoreboard players set pillar.time tick 900
execute if score pillar.time state matches 12 run scoreboard players set pillar.time tick 1200
execute if score pillar.time state matches 13 run scoreboard players set pillar.time tick 1500
execute if score pillar.time state matches 14 run scoreboard players set pillar.time tick 1800

scoreboard players add pillar.time tick 1

execute as @a[team=pillar,gamemode=survival] at @s run function minecraft:pillar/map/true_start

scoreboard players set pillar.state state 3
execute as @a[team=pillar] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0