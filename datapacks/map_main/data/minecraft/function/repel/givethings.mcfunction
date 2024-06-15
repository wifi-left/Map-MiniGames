##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.repel] ["\u00a7a\u00a7lYou was be able to attack!"]
title @a[team=play.repel] title ["\u00a7e\u00a7lWARNING"]
title @a[team=play.repel] subtitle ["\u00a7rYou was be able to attack!"]
give @a[team=play.repel] minecraft:stick[custom_name='["§aRepel"]',lore=['["§rUse it to Shoot Down Other Players"]'],enchantments={levels:{"minecraft:knockback":1s},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_speed",slot:"any",id:"uuid_4651156831583284",name:"noName",amount:4d,operation:"add_value"}],show_in_tooltip:false}] 1
give @a[team=play.repel] minecraft:bow[custom_name='["§cRepel Bow"]',lore=['["§rUse it to Shoot Down Other Players"]'],enchantments={levels:{"minecraft:punch":1s},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_speed",slot:"any",id:"uuid_4651156831583284",name:"noName",amount:4d,operation:"add_value"}],show_in_tooltip:false}] 1
give @a[team=play.repel] arrow 15
team modify play.repel friendlyFire true
