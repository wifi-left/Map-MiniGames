scoreboard players set wait.player tick 0
execute as @a[team=finder,gamemode=adventure] run scoreboard players add wait.player tick 1

execute if score wait.player tick matches ..5 run execute as @e[tag=finder.eggs.point,limit=30,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 6..10 run execute as @e[tag=finder.eggs.point,limit=60,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 11..20 run execute as @e[tag=finder.eggs.point,limit=80,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 21.. run execute as @e[tag=finder.eggs.point] at @s run function minecraft:finder/map/make_egg_per