##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## 哈尔卡拉
# 类型：森林精灵
# 出处：《打了300年的史莱姆，不知不觉就练到了满级》

# 147,170,79
item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=16556054,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s}]
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=14857765,tooltip_display={hidden_components:[unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:protection":1s}]
item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=3737721,unbreakable={},enchantments={"minecraft:feather_falling":1}]
item replace entity @s armor.legs with minecraft:leather_leggings[dyed_color=15520669,unbreakable={},enchantments={"minecraft:fire_protection":1}]

# "\u00a7a累的时候来一瓶",
# "\u00a7b头脑清醒，身体健壮",
# "\u00a7c\u00a7l哈尔克拉特制营养酒",
# "\u00a7d克服劳累的工作吧！",
# "\u00a7e（喝下后）",
# "\u00a7f啊！ 充满能量！"

# item replace entity @s container.1 with potion{C}
item replace entity @s container.0 with minecraft:iron_sword[tooltip_display={hidden_components:[unbreakable,attribute_modifiers]},unbreakable={},custom_name=["§f§l小刀"],lore=[["\u00a7b默认伤害：§c5 ♥"]],attribute_modifiers=[{type:"attack_damage",slot:mainhand,id:"uuid_4894794278636495",amount:5d,operation:"add_value"},{type:"attack_speed",slot:"mainhand",id:"uuid_1145514511455145",amount:-2.6,operation:"add_value"}]] 1
give @s minecraft:potion[potion_contents={custom_effects:[{id:"minecraft:speed",duration:200,amplifier:2b,ambient:false,show_particles:false},{id:"haste",duration:200,amplifier:1b,ambient:false,show_particles:false},{id:"strength",duration:200,amplifier:1b,ambient:false,show_particles:false},{id:"slowness",duration:400,amplifier:2b,ambient:false,show_particles:false},{id:"regeneration",duration:200,amplifier:1b,ambient:false,show_particles:false}],custom_color:3392158},custom_name="\u00a7a魔法药水"] 2

give @s minecraft:potion[potion_contents={custom_effects:[{id:"regeneration",duration:200,amplifier:1b,ambient:false,show_particles:false},{id:"absorption",duration:2000,amplifier:1b,ambient:false,show_particles:false}],custom_color:14365954},custom_name="\u00a7c恢复药水"] 2

