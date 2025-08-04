##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s
effect clear @s
item replace entity @s container.0 with minecraft:diamond_sword[tooltip_display={hidden_components:[unbreakable,attribute_modifiers]},unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:6d,operation:"add_value"},{type:"attack_speed",slot:"mainhand",id:"uuid_1145514511455145",amount:-2.4,operation:"add_value"}]]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color=7963501]
item replace entity @s armor.head with minecraft:player_head[unbreakable={},profile=MHF_ArrowUp]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={},dyed_color=7963501]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={},dyed_color=8950395]
# effect give @s speed 99999 2 true
# effect give @s jump_boost 99999 3 true
give @s carrot_on_a_stick[custom_data={job:2},custom_name="\u00a7a肾      宝",lore=["\u00a77右键使用","","\u00a7d肾宝，","\u00a7b一瓶提神醒脑，","\u00a76二瓶永不疲劳，","\u00a7e三瓶长生不老","\u00a78\u00a7n\u00a7m下次一定"],custom_model_data={floats:[4f]}]
# effect give @s invisibility 99999 1

