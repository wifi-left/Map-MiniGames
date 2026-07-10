scoreboard players set miner.time tick 600

scoreboard players set miner.player tick 0
execute as @a[team=miner,gamemode=survival] run scoreboard players add miner.player tick 1

execute as @a[team=miner,gamemode=adventure] at @s run function minecraft:miner/map/true_start
scoreboard players set miner.state state 3
execute as @a[team=miner] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
return 0