
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
item replace entity @s armor.head with leather_helmet[dyed_color=0,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=0,attribute_modifiers=[{id:"fall",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"chest"},{id:"jump",type:"jump_strength",amount:0.05,operation:"add_value",slot:"chest"},{id:"move",type:"movement_speed",amount:0.05,slot:chest,operation:"add_value"},{id:"chest",type:"armor",amount:2,operation:"add_value",display:{type:"default"},slot:"chest"}],unbreakable={},custom_data={blaze:"job"},enchantments={binding_curse:1}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=0,unbreakable={},custom_data={blaze:"job"},enchantments={swift_sneak:1}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=0,unbreakable={},custom_data={blaze:"job"}] 1
give @s wooden_sword[unbreakable={},custom_data={blaze:"job"}] 1
give @s netherite_axe[max_damage=1,damage=0,custom_data={blaze:"job"},item_name={text:"刺杀",color:red},attribute_modifiers=[{id:"sword",type:"attack_damage",amount:20,operation:"add_value",slot:"mainhand"},{id:"sword",type:"attack_speed",amount:-3.95,operation:"add_value",slot:"mainhand"}]] 1
give @s paper[item_model='snowball',item_name=[{text:"飞行雪球"},{text:" - 长按右键使用",color:gray}],consumable={animation:"bow",consume_seconds:1,has_consume_particles:false,sound:"ui.hud.bubble_pop"},custom_data={blaze:"fly"}] 1