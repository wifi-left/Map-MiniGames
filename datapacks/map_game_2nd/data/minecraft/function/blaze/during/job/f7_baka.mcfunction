
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
item replace entity @s armor.head with player_head[enchantments={binding_curse:1},profile={texture:"entity/player/slim/baka"},item_name={text:"BAKA的头"},lore=[{text:"需要加载资源包才能可见"}],dyed_color=630738,unbreakable={},custom_data={blaze:"job"}] 1
# 154,223,248
item replace entity @s armor.chest with leather_chestplate[dyed_color=630738,custom_data={blaze:"job"}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=630738,unbreakable={},custom_data={blaze:"job"}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=630738,unbreakable={},custom_data={blaze:"job"}] 1

give @s ice[item_name={text:"冰"},custom_name={text:'冰',italic:false},lore=[{text:"攻击嘎嘎的低",italic:false,color:aqua}],custom_data={blaze:"job"},attribute_modifiers=[{id:"sword",amount:2,operation:"add_value",type:"attack_damage",display:{type:"override",value:{text:"3 攻击伤害",color:"dark_aqua"}}}]]
give @s blue_ice[item_name={text:"冻"},custom_name=[{text:'冻',color:aqua,italic:false},{text:" - 长按施展",color:gray}],lore=[{text:"【快点冻上吧！「冻结了！」快点冻上吧「冻僵了！」】",italic:false,color:dark_aqua}],custom_data={blaze:"job",blaze_skill:"freeze_skill"},consumable={animation:"bow",consume_seconds:3,has_consume_particles:false,sound:"block.amethyst_cluster.place"},use_cooldown={seconds:10,cooldown_group:"freeze"}]