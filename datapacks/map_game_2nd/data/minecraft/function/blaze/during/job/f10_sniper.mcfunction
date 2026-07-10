
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
item replace entity @s armor.head with leather_helmet[dyed_color=1141815,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=1141815,attribute_modifiers=[{id:"fall",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"chest"}],unbreakable={},custom_data={blaze:"job"},enchantments={binding_curse:1}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=1141815,unbreakable={},custom_data={blaze:"job"},enchantments={swift_sneak:1}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=1141815,unbreakable={},custom_data={blaze:"job"}] 1
give @s wooden_sword[unbreakable={},custom_data={blaze:"job"}] 1
give @s crossbow[unbreakable={},custom_data={blaze:"job"},enchantments={piercing:1}] 1
give @s spectral_arrow[unbreakable={},custom_data={blaze:"job"}] 32
