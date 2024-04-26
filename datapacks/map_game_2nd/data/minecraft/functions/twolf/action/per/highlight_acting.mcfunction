tag @s add wolf.sell1
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell1,limit=1] park.uuid run tag @s add wolf.selll
execute as @e[tag=wolf.selll] at @s as @e[type=armor_stand,limit=1,sort=nearest,distance=0..1] run tag @s add wolf.sell
# scoreboard players set wolf.tmp board 0
# execute as @e[tag=wolf.sell] run item replace entity @s armor.chest with diamond_chestplate
execute as @e[tag=wolf.sell] run item replace entity @s armor.legs with diamond_leggings
execute as @e[tag=wolf.sell] run item replace entity @s armor.feet with diamond_boots
tag @e[tag=wolf.sell] remove wolf.sell
tag @e[tag=wolf.selll] remove wolf.selll
tag @s remove wolf.sell1