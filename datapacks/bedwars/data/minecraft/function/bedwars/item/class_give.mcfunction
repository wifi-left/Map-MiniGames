# 职业模式：按当前职业发放套装（执行者 = 玩家）
# 调用点：resets/classmode_start（开局）、during/player/teleport（重生，clear @s 之后）、item/class_pick（选完立即生效）
# 「职业选择」道具不在这里发 —— 它由 item/give_class_pick 单独负责（每命只发一次）
# 换职业前先把上一份职业专属物资清掉：矿工的临时镐斧带 bw_class_tool 标记，认得出
#（其它建材/消耗品由重生时的 clear @s 负责，所以不在这里按类型清，免得误删玩家自己买的）

clear @s *[custom_data~{bw_class_tool:true}]

# 战士（0）：铁剑（按本队锋利等级）+ 金苹果
execute if score @s bw.class matches ..0 run function minecraft:bedwars/item/sword/iron
execute if score @s bw.class matches ..0 run give @s golden_apple[item_name="金苹果",can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 1

# 弓箭手（1）：普通弓 + 箭
execute if score @s bw.class matches 1 run give @s bow[item_name="猎人之弓"] 1
execute if score @s bw.class matches 1 run give @s arrow 24

# 建筑师（2）：本队颜色羊毛 + 深色橡木木板 + 梯子（必须是深色橡木 —— #bedblocks 里只登记了它）
execute if score @s bw.class matches 2 run give @s[team=bw.blue] blue_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 32
execute if score @s bw.class matches 2 run give @s[team=bw.yellow] yellow_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 32
execute if score @s bw.class matches 2 run give @s[team=bw.green] lime_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 32
execute if score @s bw.class matches 2 run give @s[team=bw.red] red_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 32
execute if score @s bw.class matches 2 run give @s dark_oak_planks[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 16
execute if score @s bw.class matches 2 run give @s ladder[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 8

# 矿工（3）：临时铁镐 + 临时铁斧（item/give_class_tool，是伪工具，不写商店的永久分数）+ 少量羊毛
execute if score @s bw.class matches 3 run function minecraft:bedwars/item/give_class_tool
execute if score @s bw.class matches 3 run give @s[team=bw.blue] blue_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 8
execute if score @s bw.class matches 3 run give @s[team=bw.yellow] yellow_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 8
execute if score @s bw.class matches 3 run give @s[team=bw.green] lime_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 8
execute if score @s bw.class matches 3 run give @s[team=bw.red] red_wool[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]] 8
