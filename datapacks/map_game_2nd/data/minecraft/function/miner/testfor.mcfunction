scoreboard players set miner.player tick 0
execute as @a[team=miner,gamemode=survival] run scoreboard players add miner.player tick 1
execute as @a[team=miner,gamemode=adventure] run scoreboard players add miner.player tick 1
execute if score miner.player tick matches ..0 run function minecraft:miner/over/normal