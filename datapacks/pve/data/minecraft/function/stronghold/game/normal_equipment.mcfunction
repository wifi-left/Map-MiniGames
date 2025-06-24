clear @s
effect clear @s
item replace entity @s armor.head with leather_helmet[unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with leather_leggings[unbreakable={}]
item replace entity @s armor.feet with leather_boots[unbreakable={}]
execute if score stronghold.difficuly board matches 1..2 run item replace entity @s hotbar.0 with iron_sword[]
execute if score stronghold.difficuly board matches 3.. run item replace entity @s hotbar.0 with stone_sword[]
# item replace entity @s hotbar.1 with wooden_axe[unbreakable={}]

item replace entity @s weapon.offhand with shield[]