clear @s
effect clear @s
item replace entity @s armor.head with leather_helmet[unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with leather_leggings[unbreakable={}]
item replace entity @s armor.feet with leather_boots[unbreakable={}]
execute if score stronghold.difficulty board matches 1..2 run item replace entity @s hotbar.0 with iron_sword[item_name='蚀刻之刃']
execute if score stronghold.difficulty board matches 3.. run item replace entity @s hotbar.0 with stone_sword[item_name='蚀刻之刃']
# item replace entity @s hotbar.1 with wooden_axe[unbreakable={}]

item replace entity @s weapon.offhand with shield[]
item replace entity @s hotbar.1 with wooden_axe
give @s paper[consumable={consume_seconds:0.5,animation:"block",has_consume_particles:true,on_consume_effects:[],sound:"item.dye.use"},minecraft:max_stack_size=16,minecraft:custom_data={stronghold:"health"},item_name={text:'绷带',color:light_purple},lore=[{text:"使用后恢复大量血量",color:"green"},{text:"右键使用",color:"gray"}]]
execute if score stronghold.difficulty board matches 1 run give @s paper[consumable={consume_seconds:0.5,animation:"block",has_consume_particles:true,on_consume_effects:[],sound:"item.dye.use"},minecraft:max_stack_size=16,minecraft:custom_data={stronghold:"health"},item_name={text:'绷带',color:light_purple},lore=[{text:"使用后恢复大量血量",color:"green"},{text:"右键使用",color:"gray"}]] 2
