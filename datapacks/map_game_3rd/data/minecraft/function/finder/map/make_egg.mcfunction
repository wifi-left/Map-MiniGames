scoreboard players set wait.player tick 0
execute as @a[team=finder,gamemode=adventure] run scoreboard players add wait.player tick 1

execute if score wait.player tick matches ..5 run execute as @e[tag=finder.eggs.point,limit=15,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 6..10 run execute as @e[tag=finder.eggs.point,limit=25,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 11..25 run execute as @e[tag=finder.eggs.point,limit=50,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 26..40 run execute as @e[tag=finder.eggs.point,limit=80,sort=random] at @s run function minecraft:finder/map/make_egg_per
execute if score wait.player tick matches 41.. run execute as @e[tag=finder.eggs.point] at @s run function minecraft:finder/map/make_egg_per