execute unless items entity @s hotbar.* stick run clear @s stick
execute unless items entity @s hotbar.* stick run give @s stick[item_name='击退棒',enchantments={knockback:3},unbreakable={},custom_data={live.equipment:1}]

execute unless items entity @s armor.chest elytra run clear @s elytra
execute unless items entity @s armor.chest elytra run item replace entity @s armor.chest with elytra[item_name='击退棒',enchantments={binding_curse:1},unbreakable={},custom_data={live.equipment:1}]
