execute store result score tmp.x tick run data get entity @s Pos[0]
execute store result score tmp.y tick run data get entity @s Pos[1]
execute store result score tmp.z tick run data get entity @s Pos[2]
tellraw @a [{"score":{"name": "tmp.x","objective": "tick"},"color":"aqua"}," ",{"score":{"name": "tmp.x","objective": "tick"},"color":"aqua"}," ",{"score":{"name": "tmp.x","objective": "tick"},"color":"aqua"}," {Text1:'",{"nbt":"Text1","interpret":false,"block":"~ ~ ~","color":"green"},"',Text2:'",{"nbt":"Text2","interpret":false,"block":"~ ~ ~"},"',Text3:'",{"nbt":"Text3","interpret":false,"block":"~ ~ ~"},"',Text4:'",{"nbt":"Text4","interpret":false,"block":"~ ~ ~"}]
kill @s

