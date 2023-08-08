tag @s add sel
# execute as @a[team=play.zombie] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player

execute as @e[tag=hitted] at @s run damage @s 3 minecraft:player_gun
# tellraw @a[tag=hit.player] ["\u00a7c 剩余",{"score":{"objective": "board","name": "@s"},"color":"yellow"},"\u00a7c♥"]
# scoreboard players set tmp.health board 0
# execute unless data entity @e[tag=hitted,limit=1] {Invulnerable:1b} run scoreboard players remove tmp.health board 30
execute as @e[tag=hitted] store result entity @s Health float 0.1 run scoreboard players get tmp.health board
execute as @e[tag=hitted] at @s run playsound minecraft:block.metal.hit player @s ~ ~ ~ 1 1 1
# tag @e[tag=hitted] remove hitted
tag @s remove sel
# say 1
function gun/die 