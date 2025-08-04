##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add wolf.sell1
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell1,limit=1] park.uuid run tag @s add wolf.selll
execute as @e[tag=wolf.selll] at @s as @e[type=armor_stand,limit=1,sort=nearest,distance=0..1] run tag @s add wolf.sell
# say @e[tag=wolf.selll] @e[tag=wolf.sell]
scoreboard players set wolf.tmp board 0
execute as @e[tag=wolf.sell] store result score wolf.tmp board run data get entity @s equipment.chest.components."minecraft:custom_data".selcount

# scoreboard players set wolf.tmp board 0

execute if score wolf.tmp board matches ..0 as @e[tag=wolf.sell] run data modify entity @s equipment.chest set value {id:"leather_chestplate",components:{"minecraft:dyed_color":64659,"minecraft:custom_data":{selcount:1}}}
# leather_chestplate[dyed_color={rgb:64659},custom_data={selcount:1}]
execute if score wolf.tmp board matches 1 as @e[tag=wolf.sell] run data modify entity @s equipment.chest set value {id:"leather_chestplate",components:{"minecraft:dyed_color":15465472,"minecraft:custom_data":{selcount:2}}}
# item replace entity @s armor.chest with leather_chestplate[dyed_color={rgb:15465472},custom_data={selcount:2}]

execute if score wolf.tmp board matches 2 as @e[tag=wolf.sell] run data modify entity @s equipment.chest set value {id:"leather_chestplate",components:{"minecraft:dyed_color":51964,"minecraft:custom_data":{selcount:3}}}
# item replace entity @s armor.chest with leather_chestplate[dyed_color={rgb:51964},custom_data={selcount:3}]

execute if score wolf.tmp board matches 3.. as @e[tag=wolf.sell] run data modify entity @s equipment.chest set value {id:"leather_chestplate",components:{"minecraft:dyed_color":16515227,"minecraft:custom_data":{selcount:4}}}
# item replace entity @s armor.chest with leather_chestplate[dyed_color={rgb:16515227},custom_data={selcount:4}]
# execute as @e[tag=wolf.selll] run say 1

# say 1
tag @e[tag=wolf.sell] remove wolf.sell
tag @e[tag=wolf.selll] remove wolf.selll
tag @s remove wolf.sell1

