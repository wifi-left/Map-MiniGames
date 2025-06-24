##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## 哈尔卡拉
# 类型：森林精灵
# 出处：《打了300年的史莱姆，不知不觉就练到了满级》

# 147,170,79
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=3319573,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s}]
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=16775968,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=7814157,unbreakable={},enchantment_glint_override=true]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color=2659444,unbreakable={},enchantment_glint_override=true]

# "\u00a7a累的时候来一瓶",
# "\u00a7b头脑清醒，身体健壮",
# "\u00a7c\u00a7l哈尔克拉特制营养酒",
# "\u00a7d克服劳累的工作吧！",
# "\u00a7e（喝下后）",
# "\u00a7f啊！ 充满能量！"

item replace entity @s container.1 with minecraft:carrot_on_a_stick[custom_data={job:9},custom_name="\u00a76\u00a7l哈尔克拉特制营养酒 \u00a77- 右键饮用",lore=["\u00a7d\u00a7l饮下后，获得随机神奇效果。","\u00a7b持续时间：\u00a7a15s","\u00a7b冷却时间：\u00a7e45s","","\u00a7a累的时候来一瓶","\u00a7b头脑清醒，身体健壮","\u00a7c\u00a7l哈尔克拉特制营养酒","\u00a7d克服劳累的工作吧！","\u00a7e（喝下后）","\u00a7f啊！ 充满能量！"],tooltip_display={hidden_components:[unbreakable,attribute_modifiers]},unbreakable={},attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:0d,operation:"add_value"}],custom_model_data={floats:[20f]}] 1
item replace entity @s container.0 with minecraft:iron_sword[tooltip_display={hidden_components:[unbreakable,attribute_modifiers]},unbreakable={},custom_name=["§f§l小刀"],lore=[["\u00a7b默认伤害：§f5§c♥"]],attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:5d,operation:"add_value"},{type:"attack_speed",slot:"mainhand",id:"uuid_1145514511455145",amount:-2.6,operation:"add_value"}]] 1

advancement grant @s only others/haekara
