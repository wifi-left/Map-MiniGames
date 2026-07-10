kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"douzi":1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"t_says.equipment":1}}}}]
execute as @a[team=t_says,gamemode=adventure] at @s as @e[type=item,distance=..5] unless data entity @s {Item:{components:{"minecraft:custom_data":{"t_says_can_throw":true}}}} run kill @s
execute if score t_says.state state matches 1 run function minecraft:t_says/judge/judging
execute if score t_says.state state matches 3 run function minecraft:t_says/show_msg
execute as @a[team=t_says,gamemode=adventure] at @s if block ~ ~-1 ~ black_terracotta run tp @s 183 22 373