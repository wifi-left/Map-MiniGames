##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## 哈尔卡拉
# 类型：森林精灵
# 出处：《打了300年的史莱姆，不知不觉就练到了满级》

# 147,170,79
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color={rgb:3319573},unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:protection":1s},show_in_tooltip:false}]
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color={rgb:16775968},unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:protection":1s},show_in_tooltip:false}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color={rgb:7814157},unbreakable={},enchantments={levels:{"minecraft:feather_falling":0}}]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color={rgb:2659444},unbreakable={},enchantments={levels:{"minecraft:fire_protection":0}}]

# '"\\u00a7a累的时候来一瓶"',
# '"\\u00a7b头脑清醒，身体健壮"',
# '"\\u00a7c\\u00a7l哈尔克拉特制营养酒"',
# '"\\u00a7d克服劳累的工作吧！"',
# '"\\u00a7e（喝下后）"',
# '"\\u00a7f啊！ 充满能量！"'

item replace entity @s container.1 with minecraft:carrot_on_a_stick[custom_data={job:9},custom_name='"\\u00a76\\u00a7l哈尔克拉特制营养酒 \\u00a77- 右键饮用"',lore=['"\\u00a7d\\u00a7l饮下后，获得随机神奇效果。"','"\\u00a7b持续时间：\\u00a7a15s"','"\\u00a7b冷却时间：\\u00a7e45s"','""','"\\u00a7a累的时候来一瓶"','"\\u00a7b头脑清醒，身体健壮"','"\\u00a7c\\u00a7l哈尔克拉特制营养酒"','"\\u00a7d克服劳累的工作吧！"','"\\u00a7e（喝下后）"','"\\u00a7f啊！ 充满能量！"'],unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:mainhand,id:"uuid_4894794278636495",name:"noName",amount:0d,operation:"add_value"}],show_in_tooltip:false},custom_model_data=20] 1
item replace entity @s container.0 with minecraft:iron_sword[unbreakable={show_in_tooltip:false},custom_name='["§f§l小刀"]',lore=['["\\u00a7b默认伤害：§f5§c♥"]'],attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:mainhand,id:"uuid_4894794278636495",name:"noName",amount:5d,operation:"add_value"},{type:"generic.attack_speed",slot:"mainhand",id:"uuid_1145514511455145",name:"noName",amount:-2.6,operation:"add_value"}],show_in_tooltip:false}] 1

advancement grant @s only others/haekara