execute store result score tmp.x tick run data get entity @s Pos[0]
execute store result score tmp.y tick run data get entity @s Pos[1]
execute store result score tmp.z tick run data get entity @s Pos[2]
tellraw @a [{"score":{"name": "tmp.x","objective": "tick"},"color":"aqua"}," ",{"score":{"name": "tmp.x","objective": "tick"},"color":"aqua"}," ",{"score":{"name": "tmp.x","objective": "tick"},"color":"aqua"}]
kill @s


