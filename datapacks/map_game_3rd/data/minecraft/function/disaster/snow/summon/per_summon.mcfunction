scoreboard players remove disaster.snow.count temp 1

summon marker ~ ~ ~ {Tags:["disaster.snow.marker"]}
execute in airworld as @e[tag=disaster.snow.marker,type=marker] run function minecraft:disaster/snow/summon/action/ran_pos

execute as @e[tag=disaster.snow.marker,type=marker] at @s positioned ~ -3 ~ run function minecraft:disaster/snow/summon/falling_block

execute in airworld as @e[tag=disaster.snow.marker,type=marker] run function minecraft:disaster/snow/summon/action/ran_pos
execute as @e[tag=disaster.snow.marker,type=marker] at @s positioned ~ -3 ~ run function minecraft:disaster/snow/summon/armor_stand

kill @e[tag=disaster.snow.marker,type=marker]

execute if score disaster.snow.count temp matches 1.. run function minecraft:disaster/snow/summon/per_summon