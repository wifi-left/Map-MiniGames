gamemode survival @s
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
item replace entity @s hotbar.0 with wooden_sword[unbreakable={}]
item replace entity @s hotbar.1 with bow[unbreakable={}]
item replace entity @s[team=play.sheepwars.a] hotbar.2 with blue_wool 3
item replace entity @s[team=play.sheepwars.b] hotbar.2 with red_wool 3
item replace entity @s inventory.26 with arrow

item replace entity @s[team=play.sheepwars.a] armor.chest with leather_chestplate[unbreakable={},dyed_color=255,enchantments={binding_curse:1,blast_protection:15},attribute_modifiers=[{type:"explosion_knockback_resistance",amount:-10,id:"knockback",operation:"add_value"},{type:"armor",amount:3,id:"knockback",operation:"add_value"}]]
item replace entity @s[team=play.sheepwars.b] armor.chest with leather_chestplate[unbreakable={},dyed_color=16711680,enchantments={binding_curse:1,blast_protection:15},attribute_modifiers=[{type:"explosion_knockback_resistance",amount:-4.5,id:"knockback",operation:"add_value"},{type:"armor",amount:3,id:"knockback",operation:"add_value"}]]

item replace entity @s armor.feet with leather_boots[unbreakable={},attribute_modifiers=[{id:"s",operation:"add_value",amount:100,type:"safe_fall_distance"}],enchantments={binding_curse:1}]

tellraw @s ["\n\u00a7a欢迎来到 \u00a7b绵羊突击队 \u00a7a的世界！\n\u00a7e\u00a7l右键点击\u00a77发射的羊将有重力\n\u00a7e\u00a7lF键\u00a77发射的羊将无重力飞行！\n"]
