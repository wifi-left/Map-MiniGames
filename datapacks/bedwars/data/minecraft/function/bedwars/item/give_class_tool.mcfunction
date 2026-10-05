# 矿工的「临时」铁镐铁斧（执行者 = 玩家）
#
# 为什么用伪工具：armor.mcfunction 那套镐斧是按分数 bw.pickaxe/bw.axe 发与清的，
# 而且 clear 是按「物品 id」匹配的。如果直接发真的 iron_pickaxe/iron_axe：
#   ① 不写分数就会被 armor 的 clear 行清掉
#   ② 写分数（bw.pickaxe=2）就等于白送一份商店的永久解锁 —— 会被用来刷职业物资
# 所以这里给的是底物 stick + item_model 伪装成铁镐铁斧 + tool 组件提供真实的挖掘行为：
#   id 不是 iron_pickaxe → armor 的按 id 清扫碰不到它，分数也不用动，纯临时
# 效率 I 必须带上：商店的铁镐/铁斧都是「tool 速度 6 + 效率 I 的 +2 = 8」，
# 少了它会比真铁镐慢 25%（就是「和铁镐不匹配」）
give @s stick[item_model="iron_pickaxe",item_name="矿工镐 §7(临时)",tool={rules:[{blocks:"#minecraft:mineable/pickaxe",speed:6.0,correct_for_drops:true}],default_mining_speed:1.0,damage_per_block:1},enchantments={"minecraft:efficiency":1s},unbreakable={},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}],tooltip_display={hidden_components:[enchantments,unbreakable,can_place_on,can_break]},custom_data={bw:1,bw_class_tool:true}] 1
give @s stick[item_model="iron_axe",item_name="矿工斧 §7(临时)",tool={rules:[{blocks:"#minecraft:mineable/axe",speed:6.0,correct_for_drops:true}],default_mining_speed:1.0,damage_per_block:1},enchantments={"minecraft:efficiency":1s},attribute_modifiers=[{type:"attack_damage",slot:"any",id:"uuid_7777842599633879",amount:2d,operation:"add_value"}],unbreakable={},can_place_on=[{blocks:"#minecraft:bwplace"}],can_break=[{blocks:"#minecraft:bedblocks"}],tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable,can_place_on,can_break]},custom_data={bw:1,bw_class_tool:true}] 1
