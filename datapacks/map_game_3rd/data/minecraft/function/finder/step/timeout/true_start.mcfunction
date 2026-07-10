scoreboard players set finder.time tick 91

scoreboard players set finder.player tick 0
execute as @a[team=finder,gamemode=adventure] run scoreboard players add finder.player tick 1

execute as @a[team=finder,gamemode=adventure] at @s run function minecraft:finder/map/true_start
function minecraft:finder/map/make_egg

scoreboard players set finder.state state 3
execute as @a[team=finder] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0