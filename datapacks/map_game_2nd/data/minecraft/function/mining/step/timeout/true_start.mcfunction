scoreboard players set mining.time tick 61

scoreboard players set mining.player tick 0
execute as @a[team=mining,gamemode=survival] run scoreboard players add mining.player tick 1

execute as @a[team=mining,gamemode=adventure] at @s run function minecraft:mining/map/true_start
scoreboard players set mining.state state 3
execute as @a[team=mining] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0