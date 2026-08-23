execute unless items entity @s hotbar.* diamond_sword run clear @s diamond_sword
execute unless items entity @s hotbar.* diamond_sword run give @s diamond_sword[item_name='追杀者利剑',enchantments={sharpness:1},unbreakable={},custom_data={live.equipment:1}]

execute unless items entity @s hotbar.* diamond_axe run clear @s diamond_axe
execute unless items entity @s hotbar.* diamond_axe run give @s diamond_axe[item_name='追杀者之斧',enchantments={sharpness:1},unbreakable={},custom_data={live.equipment:1}]

effect give @s weakness 2 0 true

execute unless items entity @s armor.chest diamond_chestplate unless items entity @s container.* diamond_chestplate unless items entity @s weapon.offhand diamond_chestplate run clear @s diamond_chestplate
execute unless items entity @s armor.chest diamond_chestplate unless items entity @s container.* diamond_chestplate unless items entity @s weapon.offhand diamond_chestplate run item replace entity @s armor.chest with diamond_chestplate[unbreakable={},custom_data={live.equipment:1}]