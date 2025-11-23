##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
effect clear @s
item replace entity @s container.0 with minecraft:wooden_sword[enchantments={"minecraft:unbreaking":1},tooltip_display={hidden_components:[enchantments,unbreakable,attribute_modifiers]},custom_name={"text":"刺客木剑","color":"#e4a10f","italic": false},lore=["\u00a77刺客木剑"],unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:6d,operation:"add_value"},{type:"attack_speed",slot:"mainhand",id:"uuid_1145514511455145",amount:-2.4,operation:"add_value"}]]
# give @s minecraft:ender_pearl{Unbreakable:1b,HideFlags:63} 32
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color=2]
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={},dyed_color=3]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={},dyed_color=1,enchantments={"minecraft:feather_falling":5}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={},dyed_color=0]
give @s carrot_on_a_stick[custom_data={job:"fly_arrow"},custom_name="\u00a79飞行箭 \u00a77- 右键使用",lore=["\u00a78乘坐着箭飞走了"],custom_model_data={floats:[6f]}]
# effect give @s jump_boost 99999 255 true
# effect give @s invisibility 99999 1

give @s wind_charge 16