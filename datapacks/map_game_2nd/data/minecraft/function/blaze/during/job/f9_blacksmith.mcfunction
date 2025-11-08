
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
item replace entity @s armor.head with leather_helmet[dyed_color=7237230,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=7237230,attribute_modifiers=[{id:"fall",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"chest"},{id:"move",type:"movement_speed",amount:0.01,slot:chest,operation:"add_value"}],unbreakable={},custom_data={blaze:"job"},enchantments={binding_curse:1}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=7237230,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=7237230,unbreakable={},custom_data={blaze:"job"}] 1
give @s mace[unbreakable={},custom_data={blaze:"job"},attribute_modifiers=[{id:"sword",amount:7,operation:"add_value",type:"attack_damage",slot:"mainhand",display:{type:"override",value:{text:"伤害 +7",color:dark_green}}},{id:"sword",amount:-3.5,operation:"add_value",type:"attack_speed",slot:"mainhand",display:{type:"override",value:{text:"攻速 0.5",color:dark_green}}},{id:"sword",amount:-0.02,operation:"add_value",type:"movement_speed",slot:"mainhand",display:{type:"override",value:{text:"限速",color:dark_red}}}]] 1
