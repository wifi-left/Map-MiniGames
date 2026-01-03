##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s[team=bw.green] armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=65280]
execute unless items entity @s armor.chest minecraft:leather_chestplate run item replace entity @s[team=bw.green] armor.chest with leather_chestplate[unbreakable={},enchantments={"minecraft:binding_curse":1s,blast_protection:30},dyed_color=65280,attribute_modifiers=[{type:"explosion_knockback_resistance",amount:-4.5,id:"knockback",operation:"add_value"},{type:"armor",amount:3,id:"knockback",operation:"add_value"}]]

execute unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s[team=bw.red] armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=16711680]
execute unless items entity @s armor.chest minecraft:leather_chestplate run item replace entity @s[team=bw.red] armor.chest with leather_chestplate[unbreakable={},enchantments={"minecraft:binding_curse":1s,blast_protection:30},dyed_color=16711680,attribute_modifiers=[{type:"explosion_knockback_resistance",amount:-4.5,id:"knockback",operation:"add_value"},{type:"armor",amount:3,id:"knockback",operation:"add_value"}]]

execute unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s[team=bw.blue] armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=255]
execute unless items entity @s armor.chest minecraft:leather_chestplate run item replace entity @s[team=bw.blue] armor.chest with leather_chestplate[unbreakable={},enchantments={"minecraft:binding_curse":1s,blast_protection:30},dyed_color=255,attribute_modifiers=[{type:"explosion_knockback_resistance",amount:-4.5,id:"knockback",operation:"add_value"},{type:"armor",amount:3,id:"knockback",operation:"add_value"}]]

execute unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s[team=bw.yellow] armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=16776960]
execute unless items entity @s armor.chest minecraft:leather_chestplate run item replace entity @s[team=bw.yellow] armor.chest with leather_chestplate[unbreakable={},enchantments={"minecraft:binding_curse":1s,blast_protection:30},dyed_color=16776960,attribute_modifiers=[{type:"explosion_knockback_resistance",amount:-4.5,id:"knockback",operation:"add_value"},{type:"armor",amount:3,id:"knockback",operation:"add_value"}]]

execute unless items entity @s armor.legs minecraft:leather_leggings run item replace entity @s[team=bw.green,scores={bw.armor=..0}] armor.legs with leather_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=65280]
execute unless items entity @s armor.feet minecraft:leather_boots run item replace entity @s[team=bw.green,scores={bw.armor=..0}] armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=65280]

execute unless items entity @s armor.legs minecraft:leather_leggings run item replace entity @s[team=bw.red,scores={bw.armor=..0}] armor.legs with leather_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=16711680]
execute unless items entity @s armor.feet minecraft:leather_boots run item replace entity @s[team=bw.red,scores={bw.armor=..0}] armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=16711680]

execute unless items entity @s armor.legs minecraft:leather_leggings run item replace entity @s[team=bw.yellow,scores={bw.armor=..0}] armor.legs with leather_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=16776960]
execute unless items entity @s armor.feet minecraft:leather_boots run item replace entity @s[team=bw.yellow,scores={bw.armor=..0}] armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=16776960]

execute unless items entity @s armor.legs minecraft:leather_leggings run item replace entity @s[team=bw.blue,scores={bw.armor=..0}] armor.legs with leather_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=255]
execute unless items entity @s armor.feet minecraft:leather_boots run item replace entity @s[team=bw.blue,scores={bw.armor=..0}] armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s},dyed_color=255]

execute unless items entity @s armor.legs minecraft:chainmail_leggings run item replace entity @s[scores={bw.armor=1..1}] armor.legs with chainmail_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s}]
execute unless items entity @s armor.feet minecraft:chainmail_boots run item replace entity @s[scores={bw.armor=1..1}] armor.feet with chainmail_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s}]

execute unless items entity @s armor.legs minecraft:iron_leggings run item replace entity @s[scores={bw.armor=2..2}] armor.legs with iron_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s}]
execute unless items entity @s armor.feet minecraft:iron_boots run item replace entity @s[scores={bw.armor=2..2}] armor.feet with iron_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s}]

execute unless items entity @s armor.legs minecraft:diamond_leggings run item replace entity @s[scores={bw.armor=3..3}] armor.legs with diamond_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1s}]
execute unless items entity @s armor.feet minecraft:diamond_boots run item replace entity @s[scores={bw.armor=3..3}] armor.feet with diamond_boots[unbreakable={},enchantments={"minecraft:binding_curse":1s}]
