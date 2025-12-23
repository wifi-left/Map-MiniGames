scoreboard players set elytra.time tick 241

scoreboard players set elytra.player tick 0
execute as @a[team=elytra,gamemode=adventure] run scoreboard players add elytra.player tick 1

fill 98 99 347 98 103 357 minecraft:air replace barrier

execute as @a[team=elytra,gamemode=adventure] at @s run function minecraft:elytra/map/true_start
scoreboard players set elytra.state state 3
execute as @a[team=elytra] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0