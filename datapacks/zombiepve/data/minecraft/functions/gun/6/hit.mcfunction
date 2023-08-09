tag @s add sel
execute unless data entity @s {Invulnerable:1b} run damage @s 10 minecraft:player_gun by @a[tag=hit.player,limit=1]
execute store result score tmp.health board as @s run data get entity @s Health 10
# tellraw @a[tag=hit.player] ["\u00a7c 剩余",{"score":{"objective": "board","name": "@s"},"color":"yellow"},"\u00a7c♥"]
# scoreboard players set tmp.health board 0
# execute unless data entity @e[tag=hitted,limit=1] {Invulnerable:1b} run scoreboard players remove tmp.health board 30
# execute if score tmp.health board matches ..0 run scoreboard players set tmp.health board 0
scoreboard players set 10 board 10
scoreboard players operation tmp.health.calc1 board = tmp.health board
scoreboard players operation tmp.health.calc2 board = tmp.health board
scoreboard players operation tmp.health.calc2 board %= 10 board
scoreboard players operation tmp.health.calc1 board /= 10 board
scoreboard players add tmp.health.calc1 board 0
scoreboard players add tmp.health.calc2 board 0
tellraw @a[tag=hit.player] ["\u00a76+100\u00a76 Coins"]
tellraw @a[tag=hit.player] ["\u00a78 - 剩余血量：",{"score":{"objective": "board","name": "tmp.health.calc1"},"color":"yellow"},".",{"score":{"objective": "board","name": "tmp.health.calc2"},"color":"yellow"},"\u00a7c♥"]


execute as @s at @s run particle minecraft:block redstone_block ~ ~1.5 ~ 0 0 0 1 10
execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5
execute as @a[tag=hit.player] at @s run scoreboard players add @s zombie.coin 100
tag @s remove sel
# say 1