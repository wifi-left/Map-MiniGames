tellraw @a[team=play.repel] ["\u00a7a\u00a7lYou was be able to attack!"]
title @a[team=play.repel] title ["\u00a7e\u00a7lWARNING"]
title @a[team=play.repel] subtitle ["\u00a7rYou was be able to attack!"]
give @a[team=play.repel] minecraft:stick{display:{Name:'["§aRepel"]',Lore:['["§rUse it to Shoot Down Other Players"]']},HideFlags:63,Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"noName",Amount:4d,Operation:0,UUID:[I;4651,1568,3158,3284]}]} 1
give @a[team=play.repel] minecraft:bow{display:{Name:'["§cRepel Bow"]',Lore:['["§rUse it to Shoot Down Other Players"]']},HideFlags:63,Enchantments:[{id:"minecraft:punch",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"noName",Amount:4d,Operation:0,UUID:[I;4651,1568,3158,3284]}]} 1
give @a[team=play.repel] arrow 15
team modify play.repel friendlyFire true