tag @s add sel
execute as @a[team=play.zombie] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player
execute as @e[tag=hitted,limit=1] unless data entity @s {Invulnerable:1b} run damage @s 3 minecraft:player_gun by @a[tag=hit.player,limit=1]
execute store result score tmp.health board as @e[tag=hitted] run data get entity @s Health 10
# tellraw @a[tag=hit.player] ["\u00a7c 剩余",{"score":{"objective": "board","name": "@s"},"color":"yellow"},"\u00a7c♥"]
# scoreboard players set tmp.health board 0
# execute unless data entity @e[tag=hitted,limit=1] {Invulnerable:1b} run scoreboard players remove tmp.health board 30
execute if score tmp.health board matches ..0 run scoreboard players set tmp.health board 0
scoreboard players set 10 board 10
scoreboard players operation tmp.health.calc1 board = tmp.health board
scoreboard players operation tmp.health.calc2 board = tmp.health board
scoreboard players operation tmp.health.calc2 board %= 10 board
scoreboard players operation tmp.health.calc1 board /= 10 board
scoreboard players add tmp.health.calc1 board 0
scoreboard players add tmp.health.calc2 board 0
tellraw @a[tag=hit.player] ["\u00a76+30\u00a76 Coins"]

tellraw @a[tag=hit.player] ["\u00a78 - 剩余血量：",{"score":{"objective": "board","name": "tmp.health.calc1"},"color":"yellow"},".",{"score":{"objective": "board","name": "tmp.health.calc2"},"color":"yellow"},"\u00a7c♥"]
data modify entity @e[tag=hitted,limit=1] AngryAt set from entity @s UUID
execute as @e[tag=hitted] at @s run particle minecraft:block redstone_block ~ ~1.5 ~ 0 0 0 1 10
execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5
execute as @a[tag=hit.player] at @s run scoreboard players add @s zombie.coin 30
tag @a remove hit.player
tag @s remove sel
# say 1
function gun/die 