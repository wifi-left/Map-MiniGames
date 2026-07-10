##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute store result score tmp.health board as @s run data get entity @s Health 10
# tellraw @a[tag=hit.player] ["\u00a7c 剩余",{"score":{"objective": "board","name": "@s"},"color":"yellow"},"\u00a7c♥"]
# scoreboard players set tmp.health board 0
execute store result score damage.tmp board run data get entity @s data.damage

execute if score tmp.health board matches ..0 run scoreboard players set tmp.health board 0
scoreboard players set 10 board 10
scoreboard players operation tmp.health.calc1 board = tmp.health board
scoreboard players operation tmp.health.calc2 board = tmp.health board
scoreboard players operation tmp.health.calc2 board %= 10 board
scoreboard players operation tmp.health.calc1 board /= 10 board
scoreboard players add tmp.health.calc1 board 0
scoreboard players add tmp.health.calc2 board 0
tellraw @a[tag=hit.player] ["§c击中 ",{selector:"@s"},"\n§8 - 剩余血量：",{"score":{"objective":"board","name":"tmp.health.calc1"},"color":"yellow"},".",{"score":{"objective":"board","name":"tmp.health.calc2"},"color":"yellow"},"§c♥"]

execute as @e[tag=hitted,limit=1,sort=nearest] at @s run particle minecraft:block{block_state:{Name:redstone_block,Properties:{}}} ~ ~1.5 ~ 0 0 0 1 10
execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5

tag @a remove hit.player
tag @s remove sel
# say 1

