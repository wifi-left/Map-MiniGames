##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add sel
execute as @a if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player
data modify storage temp damage_args set value {type:"minecraft:freeze",target:"@s",damage:1,by:"@a[tag=hit.player,limit=1]"}
data modify storage minecraft:temp damage_args.damage set from entity @s data.damage
execute as @e[tag=hitted,limit=1] run function utils:damage with storage minecraft:temp damage_args
execute as @e[tag=hitted,limit=1] run effect give @s slowness 5 25 true
execute as @e[tag=hitted,limit=1] run effect give @s blindness 5 0 true
execute as @e[tag=hitted,limit=1] run effect give @s darkness 5 25 true
execute as @a[tag=hitted,limit=1] run tellraw @s ["\u00a7c你被麻醉枪麻醉了。"]
execute store result score tmp.damage temp run data get entity @s data.damage 10
scoreboard players set tmp.health board 0
execute store result score tmp.health board as @e[tag=hitted] run data get entity @s Health 10

scoreboard players set 10 board 10
scoreboard players operation tmp.health.calc1 board = tmp.health board
scoreboard players operation tmp.health.calc2 board = tmp.health board
scoreboard players operation tmp.health.calc2 board %= 10 board
scoreboard players operation tmp.health.calc1 board /= 10 board

scoreboard players operation tmp.damage.calc1 board = tmp.damage temp
scoreboard players operation tmp.damage.calc2 board = tmp.damage temp
scoreboard players operation tmp.damage.calc2 board %= 10 board
scoreboard players operation tmp.damage.calc1 board /= 10 board

scoreboard players add tmp.health.calc1 board 0
scoreboard players add tmp.damage.calc1 board 0
scoreboard players add tmp.health.calc2 board 0
scoreboard players add tmp.damage.calc2 board 0
tellraw @a[tag=hit.player] ["§6攻击伤害：",{"score":{"objective":"board","name":"tmp.damage.calc1"},"color":"yellow"},".",{"score":{"objective":"board","name":"tmp.damage.calc2"},"color":"yellow"},"§c♥"]
tellraw @a[tag=hit.player] ["§8 - 剩余血量：",{"score":{"objective":"board","name":"tmp.health.calc1"},"color":"yellow"},".",{"score":{"objective":"board","name":"tmp.health.calc2"},"color":"yellow"},"§c♥"]

execute as @e[tag=hitted] at @s run particle minecraft:block{block_state:{Name:redstone_block,Properties:{}}} ~ ~1.5 ~ 0 0 0 1 10

execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5

tag @a remove hit.player
tag @s remove sel
# say 1
function gun/die

