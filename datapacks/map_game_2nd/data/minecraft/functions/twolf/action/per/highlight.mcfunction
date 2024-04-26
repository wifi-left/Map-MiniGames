tag @s add wolf.sell1
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell1,limit=1] park.uuid run tag @s add wolf.selll
execute as @e[tag=wolf.selll] at @s as @e[type=armor_stand,limit=1,sort=nearest,distance=0..1] run tag @s add wolf.sell
scoreboard players set wolf.tmp board 0
execute as @e[tag=wolf.sell] store result score wolf.tmp board run data get entity @s ArmorItems[2].tag.selcount

execute if score wolf.tmp board matches ..0 as @e[tag=wolf.sell] run item replace entity @s armor.chest with leather_chestplate{display:{color:64659},selcount:1}

execute if score wolf.tmp board matches 1 as @e[tag=wolf.sell] run item replace entity @s armor.chest with leather_chestplate{display:{color:15465472},selcount:2}

execute if score wolf.tmp board matches 2 as @e[tag=wolf.sell] run item replace entity @s armor.chest with leather_chestplate{display:{color:51964},selcount:3}

execute if score wolf.tmp board matches 3.. as @e[tag=wolf.sell] run item replace entity @s armor.chest with leather_chestplate{display:{color:16515227},selcount:4}
# execute as @e[tag=wolf.selll] run say 1

# say 1
tag @e[tag=wolf.sell] remove wolf.sell
tag @e[tag=wolf.selll] remove wolf.selll
tag @s remove wolf.sell1