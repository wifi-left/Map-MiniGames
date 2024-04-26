## 哈尔卡拉
# 类型：森林精灵
# 出处：《打了300年的史莱姆，不知不觉就练到了满级》

# 147,170,79
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:16556054},Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.head with minecraft:leather_helmet{display:{color:14857765},Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.feet with minecraft:leather_boots{display:{color:3737721},Unbreakable:1b,Enchantments:[{id:"feather_falling",lvl:1}]}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:15520669},Unbreakable:1b,Enchantments:[{id:"fire_protection",lvl:1}]}

# '"\\u00a7a累的时候来一瓶"',
# '"\\u00a7b头脑清醒，身体健壮"',
# '"\\u00a7c\\u00a7l哈尔克拉特制营养酒"',
# '"\\u00a7d克服劳累的工作吧！"',
# '"\\u00a7e（喝下后）"',
# '"\\u00a7f啊！ 充满能量！"'

# item replace entity @s container.1 with potion{C}
item replace entity @s container.0 with minecraft:iron_sword{Unbreakable:1b,display:{Name:'["§f§l小刀"]',Lore:['["\\u00a7b默认伤害：§c5 ♥"]']},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:5d,Operation:0,UUID:[I;4894,7942,7863,6495],Slot:mainhand},{AttributeName:"generic.attack_speed",Amount:-2.6,Slot:"mainhand",Operation:0,UUID:[I;1145,5145,1145,5145]}]} 1
give @s minecraft:potion{custom_potion_effects:[{id:"minecraft:speed",duration:200,amplifier:2b,ambient:0b,show_particles:0b},{id:"haste",duration:200,amplifier:1b,ambient:0b,show_particles:0b},{id:"strength",duration:200,amplifier:1b,ambient:0b,show_particles:0b},{id:"slowness",duration:400,amplifier:2b,ambient:0b,show_particles:0b},{id:"regeneration",duration:200,amplifier:1b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7a魔法药水"'},CustomPotionColor:3392158} 2

give @s minecraft:potion{custom_potion_effects:[{id:"regeneration",duration:200,amplifier:1b,ambient:0b,show_particles:0b},{id:"absorption",duration:2000,amplifier:1b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7c恢复药水"'},CustomPotionColor:14365954} 2