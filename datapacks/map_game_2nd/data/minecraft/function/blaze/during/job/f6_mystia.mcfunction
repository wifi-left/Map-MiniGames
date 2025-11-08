
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
item replace entity @s armor.head with player_head[enchantments={binding_curse:1},profile={texture:"entity/player/slim/mystia"},item_name={text:"小碎骨的头"},lore=[{text:"需要加载资源包才能可见"}],dyed_color=16462271,unbreakable={},custom_data={blaze:"job"},attribute_modifiers=[{id:"safe",amount:10,operation:"add_value",type:"safe_fall_distance",slot:"any",display:{type:"override",value:{text:"可防止摔伤 +10格",color:"light_purple"}}}]] 1
# 154,223,248
item replace entity @s armor.chest with leather_chestplate[dyed_color=16777215,custom_data={blaze:"job"}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=2890026,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=3611193,unbreakable={},custom_data={blaze:"job"}] 1

give @s feather[item_name={text:"羽毛"},custom_name={text:'羽毛',italic:false},lore=[{text:"你不会想去战斗吧，不会吧，不会吧...",italic:false,color:"light_purple"}],custom_data={blaze:"job"},attribute_modifiers=[{id:"sword",amount:1,operation:"add_value",type:"attack_damage"}]]
give @s paper[item_model='bow',item_name=[{text:"飞行弓"},{text:" - 长按右键使用",color:gray}],consumable={animation:"bow",consume_seconds:4,has_consume_particles:false,sound:"block.note_block.didgeridoo"},custom_data={blaze_skill:"fly_bow",blaze:"job"},attribute_modifiers=[{id:"safe",amount:10,operation:"add_value",type:"safe_fall_distance",slot:"any",display:{type:"override",value:{text:"持有此可防止+10格摔伤",color:"light_purple"}}}]] 1
give @s paper[item_model='black_harness',item_name=[{text:"鸟目"},{text:" - 长按右键使用 (10s)",color:gray}],consumable={animation:"bow",consume_seconds:10,has_consume_particles:false,sound:"block.note_block.banjo"},custom_data={blaze_skill:"blind_skill",blaze:"job"}] 1
give @s paper[item_model='tripwire_hook',item_name=[{text:"歌唱"},{text:" - 长按右键 (10s)",color:gray}],consumable={animation:"block",consume_seconds:10,has_consume_particles:false,sound:"entity.parrot.ambient"},custom_data={blaze_skill:"singing_skill",blaze:"job"}] 1
