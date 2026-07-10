scoreboard players set fishing.time tick 91

scoreboard players set fishing.player tick 0
execute as @a[team=fishing,gamemode=adventure] run scoreboard players add fishing.player tick 1

execute as @a[team=fishing,gamemode=adventure] at @s run function minecraft:fishing/map/true_start
scoreboard players set fishing.state state 3
execute as @a[team=fishing] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0