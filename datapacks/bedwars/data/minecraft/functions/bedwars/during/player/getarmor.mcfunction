execute unless data entity @s {Inventory:[{id:"minecraft:leather_helmet"}]} run item replace entity @s[team=bw.green] armor.head with leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:65280}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_chestplate"}]} run item replace entity @s[team=bw.green] armor.chest with leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:65280}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_helmet"}]} run item replace entity @s[team=bw.red] armor.head with leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16711680}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_chestplate"}]} run item replace entity @s[team=bw.red] armor.chest with leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16711680}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_helmet"}]} run item replace entity @s[team=bw.blue] armor.head with leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:255}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_chestplate"}]} run item replace entity @s[team=bw.blue] armor.chest with leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:255}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_helmet"}]} run item replace entity @s[team=bw.yellow] armor.head with leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16776960}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_chestplate"}]} run item replace entity @s[team=bw.yellow] armor.chest with leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16776960}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_leggings"}]} run item replace entity @s[team=bw.green,scores={bw.armor=..0}] armor.legs with leather_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:65280}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_boots"}]} run item replace entity @s[team=bw.green,scores={bw.armor=..0}] armor.feet with leather_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:65280}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_leggings"}]} run item replace entity @s[team=bw.red,scores={bw.armor=..0}] armor.legs with leather_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16711680}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_boots"}]} run item replace entity @s[team=bw.red,scores={bw.armor=..0}] armor.feet with leather_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16711680}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_leggings"}]} run item replace entity @s[team=bw.yellow,scores={bw.armor=..0}] armor.legs with leather_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16776960}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_boots"}]} run item replace entity @s[team=bw.yellow,scores={bw.armor=..0}] armor.feet with leather_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:16776960}}

execute unless data entity @s {Inventory:[{id:"minecraft:leather_leggings"}]} run item replace entity @s[team=bw.blue,scores={bw.armor=..0}] armor.legs with leather_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:255}}
execute unless data entity @s {Inventory:[{id:"minecraft:leather_boots"}]} run item replace entity @s[team=bw.blue,scores={bw.armor=..0}] armor.feet with leather_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:255}}

execute unless data entity @s {Inventory:[{id:"minecraft:chainmail_leggings"}]} run item replace entity @s[scores={bw.armor=1..1}] armor.legs with chainmail_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute unless data entity @s {Inventory:[{id:"minecraft:chainmail_boots"}]} run item replace entity @s[scores={bw.armor=1..1}] armor.feet with chainmail_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute unless data entity @s {Inventory:[{id:"minecraft:iron_leggings"}]} run item replace entity @s[scores={bw.armor=2..2}] armor.legs with iron_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute unless data entity @s {Inventory:[{id:"minecraft:iron_boots"}]} run item replace entity @s[scores={bw.armor=2..2}] armor.feet with iron_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute unless data entity @s {Inventory:[{id:"minecraft:diamond_leggings"}]} run item replace entity @s[scores={bw.armor=3..3}] armor.legs with diamond_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute unless data entity @s {Inventory:[{id:"minecraft:diamond_boots"}]} run item replace entity @s[scores={bw.armor=3..3}] armor.feet with diamond_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
