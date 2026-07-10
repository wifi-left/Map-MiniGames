
# 通用逻辑
scoreboard players set blaze.buy.success board 0
execute at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2 1
# 需要的金币
scoreboard players set blaze.need board 50

execute if score @s blaze.coin >= blaze.need board run scoreboard players set blaze.buy.success board 1
execute if score blaze.buy.success board matches 1 run tellraw @s ["\u00a7a切换职业成功。\n\u00a7c金币 -",{score:{name:"blaze.need",objective:board},color:red}]
execute if score blaze.buy.success board matches 1 run scoreboard players operation @s blaze.coin -= blaze.need board
execute if score blaze.buy.success board matches 0 run tellraw @s ["\u00a7c切换职业失败！金币不足！"]
execute if score blaze.buy.success board matches 0 at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score blaze.buy.success board matches 0 run return 0

# 前置条件
clear @s *[custom_data~{blaze:"job"}]

# 购买的物品
item replace entity @s armor.head with iron_helmet[unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.chest with diamond_chestplate[attribute_modifiers=[{id:"chest",type:"knockback_resistance",amount:1,operation:"add_value",display:{type:"default"},slot:"chest"},{id:"chest",type:"armor",amount:8,operation:"add_value",display:{type:"default"},slot:"chest"},{id:"move",type:"movement_speed",amount:-0.03,slot:chest,operation:"add_value"}],unbreakable={},custom_data={blaze:"job"},enchantments={binding_curse:1}] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.feet with iron_boots[unbreakable={},custom_data={blaze:"job"}] 1
give @s wooden_axe[unbreakable={},custom_data={blaze:"job"}] 1
give @s shield[unbreakable={},custom_data={blaze:"job"}] 1