# execute in overworld positioned -317 10 624 run kill @e[type=item,distance=..150]
# execute as @e[tag=endless.item] at @s run kill @e[type=item,distance=0..5]
tag @e[tag=endless.item.ok] remove endless.item.ok
execute as @e[tag=endless.item] at @s unless entity @e[type=item,distance=0..3] run tag @s add endless.item.ok
execute as @e[limit=1,sort=random,type=marker,tag=endless.item.ok] at @s run function minecraft:endless_wolf/loot_item