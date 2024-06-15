##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
effect clear @s
item replace entity @s container.0 with minecraft:wooden_sword[enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:false},custom_name='{"text":"桃木剑","color":"#e4a10f","italic": false}',lore=['"\\u00a77一个很基础的木剑"'],unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:mainhand,id:"uuid_4894794278636495",name:"noName",amount:6d,operation:"add_value"},{type:"generic.attack_speed",slot:"mainhand",id:"uuid_1145514511455145",name:"noName",amount:-2.4,operation:"add_value"}],show_in_tooltip:false}]
# give @s minecraft:ender_pearl{Unbreakable:1b,HideFlags:63} 32
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color={rgb:24768}]
item replace entity @s armor.head with minecraft:player_head[unbreakable={},profile="MHF_CoconutG"]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={},dyed_color={rgb:14983439},enchantments={levels:{"minecraft:feather_falling":5}}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={},dyed_color={rgb:12583002}]
give @s carrot_on_a_stick[custom_data={job:3},custom_name='"\\u00a79空间移动 \\u00a77- 右键使用"',lore=['"\\u00a78你突然就消失了"'],custom_model_data=6]
# effect give @s jump_boost 99999 255 true
# effect give @s invisibility 99999 1
