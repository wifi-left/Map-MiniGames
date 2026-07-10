##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score tmp.x tick run data get entity @s Pos[0]
execute store result score tmp.y tick run data get entity @s Pos[1]
execute store result score tmp.z tick run data get entity @s Pos[2]
execute if block ~ ~ ~ #air run scoreboard players remove tmp.y tick 1
data modify storage minecraft:temp nbt_tmp set value {}
execute if block ~ ~ ~ #air positioned ~ ~-1 ~ run data modify storage minecraft:temp nbt_tmp set from block ~ ~ ~
execute unless block ~ ~ ~ #air positioned ~ ~ ~ run data modify storage minecraft:temp nbt_tmp set from block ~ ~ ~
tellraw @a [{"score":{"name":"tmp.x","objective":"tick"},"color":"aqua"}," ",{"score":{"name":"tmp.y","objective":"tick"},"color":"aqua"}," ",{"score":{"name":"tmp.z","objective":"tick"},"color":"aqua"},"\n",{nbt:"nbt_tmp",storage:"minecraft:temp",color:green,interpret:false}]
kill @s