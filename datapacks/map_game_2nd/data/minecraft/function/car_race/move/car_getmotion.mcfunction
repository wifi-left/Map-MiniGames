scoreboard players set car.tmp tick 1

execute on passengers run scoreboard players set car.tmp tick 0
execute if score car.tmp tick matches 1 run return 0
execute on passengers unless score @s car.speed matches 0.. run return 0
# say 1
execute store result entity @s attributes[0].base double 0.01 on passengers run scoreboard players get @s car.speed
# data modify entity @s Motion set from entity @e[tag=f.tmp,limit=1,sort=nearest] Pos
# tellraw @a [{"nbt": "Pos","entity": "@e[tag=f.tmp,limit=1,sort=nearest]","source": "entity"}]
# data get entity @s Motion
# say @s
# kill @e[tag=f.tmp]
