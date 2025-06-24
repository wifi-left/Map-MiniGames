##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.repel] ["§a§lYou was be able to attack!"]
title @a[team=play.repel] title ["\u00a7e\u00a7lWARNING"]
title @a[team=play.repel] subtitle ["\u00a7rYou was be able to attack!"]
give @a[team=play.repel] minecraft:stick[custom_name=["§aRepel"],lore=[["§rUse it to Shoot Down Other Players"]],enchantments={"minecraft:knockback":1s},tooltip_display={hidden_components:[enchantments,attribute_modifiers]},attribute_modifiers=[{type:"attack_speed",slot:"any",id:"uuid_4651156831583284",amount:4d,operation:"add_value"}]] 1
give @a[team=play.repel] minecraft:bow[custom_name=["§cRepel Bow"],lore=[["§rUse it to Shoot Down Other Players"]],enchantments={"minecraft:punch":1s},tooltip_display={hidden_components:[enchantments,attribute_modifiers]},attribute_modifiers=[{type:"attack_speed",slot:"any",id:"uuid_4651156831583284",amount:4d,operation:"add_value"}]] 1
give @a[team=play.repel] arrow 15
team modify play.repel friendlyFire true

