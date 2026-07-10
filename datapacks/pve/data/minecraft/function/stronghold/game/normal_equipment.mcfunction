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


give @s minecraft:wooden_hoe[!minecraft:attribute_modifiers,minecraft:consumable={sound:"minecraft:item.brush.brushing.gravel",has_consume_particles:0b,animation:"spear",consume_seconds:0.1,on_consume_effects:[]},minecraft:custom_data="{gun_data:{status:\"no_bullet\",is_gun:1b,cooldown:30,cooldown_shoot:0.1,bullet_type:1,max_stack_size:10,damage:4,speed:4,distance:16}}",!minecraft:damage,!minecraft:max_damage,minecraft:max_stack_size=10,minecraft:unbreakable={},minecraft:use_cooldown={seconds:1,cooldown_group:"gun:1"},minecraft:item_name="手枪",minecraft:lore=[[{text:"伤害：",italic:0b,color:"gray"},{text:"4",italic:0b,color:"red"}],[{text:"弹夹大小：",italic:0b,color:"gray"},{text:"10",italic:0b,color:"green"}],[{text:"冷却：",italic:0b,color:"gray"},{text:"1s",italic:0b,color:"aqua"}],[{text:"上弹时长：",italic:0b,color:"gray"},{text:"1.5s",italic:0b,color:"yellow"}]]]

give @s minecraft:oak_button[custom_data={gun_data:{is_bullet:true,type:1}},max_stack_size=99,item_name='手枪子弹'] 50