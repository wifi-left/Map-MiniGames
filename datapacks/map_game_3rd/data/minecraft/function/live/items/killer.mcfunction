execute unless items entity @s hotbar.* trident[enchantments~[{enchantments:["riptide"]}]] run clear @s trident[enchantments~[{enchantments:["riptide"]}]]
execute unless items entity @s hotbar.* trident[enchantments~[{enchantments:["riptide"]}]] run give @s trident[item_name='三叉戟 with 激流I',enchantments={riptide:1},unbreakable={},custom_data={live.equipment:1}]

execute unless items entity @s hotbar.* trident[enchantments~[{enchantments:["loyalty"]}]] run clear @s trident[enchantments~[{enchantments:["loyalty"]}]]
execute unless items entity @s hotbar.* trident[enchantments~[{enchantments:["loyalty"]}]] run give @s trident[item_name='三叉戟 with 忠诚',enchantments={loyalty:1},unbreakable={},custom_data={live.equipment:1}]

effect give @s weakness 2 0 true

execute unless items entity @s armor.chest elytra unless items entity @s container.* elytra unless items entity @s weapon.offhand elytra run clear @s elytra
execute unless items entity @s armor.chest elytra unless items entity @s container.* elytra unless items entity @s weapon.offhand elytra run item replace entity @s armor.chest with elytra[unbreakable={},custom_data={live.equipment:1}]