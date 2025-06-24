##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute store result score tmp.health board as @e[tag=hitted,limit=1,sort=nearest] run data get entity @s Health
# tellraw @a[tag=hit.player] ["\u00a7c 剩余",{"score":{"objective": "board","name": "@s"},"color":"yellow"},"\u00a7c♥"]
# scoreboard players set tmp.health board 0
execute store result score damage.tmp board run data get entity @s data.damage
# scoreboard players remove damage.tmp board 1
execute unless data entity @e[tag=hitted,limit=1,sort=nearest] {Invulnerable:1b} run scoreboard players operation tmp.health board -= damage.tmp board
scoreboard players add tmp.health board 1

execute if score tmp.health board matches ..0 run scoreboard players set tmp.health board 0
scoreboard players set 10 board 10
scoreboard players operation tmp.health.calc1 board = tmp.health board
scoreboard players operation tmp.health.calc2 board = tmp.health board
scoreboard players operation tmp.health.calc2 board %= 10 board
scoreboard players operation tmp.health.calc1 board /= 10 board
scoreboard players add tmp.health.calc1 board 0
scoreboard players add tmp.health.calc2 board 0
tellraw @a[tag=hit.player] ["§6+",{"score":{"name":"damage.tmp","objective":"board"},"color":"gold"},"§6 Coins"]
tellraw @a[tag=hit.player] ["§8 - 剩余血量：",{"score":{"objective":"board","name":"tmp.health.calc1"},"color":"yellow"},".",{"score":{"objective":"board","name":"tmp.health.calc2"},"color":"yellow"},"§c♥"]

execute as @e[tag=hitted,limit=1,sort=nearest] store result entity @s Health float 0.1 run scoreboard players get tmp.health board

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data modify entity @e[tag=hitted,limit=1,sort=nearest] AngryAt set from entity @s UUID

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge entity @e[tag=hitted,limit=1,sort=nearest] {AngerTime:540}
execute as @e[tag=hitted,limit=1,sort=nearest] at @s run particle minecraft:block{block_state:{Name:redstone_block,Properties:{}}} ~ ~1.5 ~ 0 0 0 1 10
execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5
execute as @a[tag=hit.player] at @s run scoreboard players operation @s zombie.coin += damage.tmp board

tag @a remove hit.player
tag @s remove sel
# say 1

