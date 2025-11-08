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
item replace entity @s armor.head with copper_helmet[dyed_color=16232706,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.chest with copper_chestplate[dyed_color=16232706,attribute_modifiers=[{id:"fall",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"chest"},{id:"move",type:"movement_speed",amount:0.01,slot:chest,operation:"add_value"}],unbreakable={},custom_data={blaze:"job"},enchantments={binding_curse:1}] 1
item replace entity @s armor.legs with copper_leggings[dyed_color=16232706,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.feet with copper_boots[dyed_color=16232706,unbreakable={},custom_data={blaze:"job"}] 1
give @s wooden_sword[unbreakable={},custom_data={blaze:"job"}] 1
give @s diamond_pickaxe[max_damage=10,damage=0,custom_data={blaze:"job"},item_name={text:"矿工镐 (比普通玻璃镐速度更快)",color:aqua},attribute_modifiers=[{id:"sword",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"}],can_break={blocks:["glass","red_stained_glass","blue_stained_glass","waxed_oxidized_copper_bars"]},tooltip_display={hidden_components:[]},lore=[{text:'用于快速挖掘玻璃、大门',color:yellow,underlined:false,italic:false},{text:"比普通玻璃镐速度更快",italic:false,underlined:false,color:green}],tool={rules:[{"blocks":["glass","red_stained_glass","blue_stained_glass"],correct_for_drops:false,speed:0.5},{blocks:["waxed_oxidized_copper_bars"],correct_for_drops:false,speed:12}]}] 1