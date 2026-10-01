##
## 站在某种方块上（id 70..77）
## 16 格先铺满"干扰格"（terracotta，在清理标签里），再按任务覆盖其中 4 个角
## ※ 坐标与 stand_on_block.mcfunction 完全一致（那是已验证可站的瓷砖格）
##

# 干扰格
execute if score t_says.scene board matches 70..77 run setblock 184 22 370 terracotta
execute if score t_says.scene board matches 70..77 run setblock 182 22 370 terracotta
execute if score t_says.scene board matches 70..77 run setblock 186 22 372 terracotta
execute if score t_says.scene board matches 70..77 run setblock 184 22 372 terracotta
execute if score t_says.scene board matches 70..77 run setblock 182 22 372 terracotta
execute if score t_says.scene board matches 70..77 run setblock 180 22 372 terracotta
execute if score t_says.scene board matches 70..77 run setblock 186 22 374 terracotta
execute if score t_says.scene board matches 70..77 run setblock 184 22 374 terracotta
execute if score t_says.scene board matches 70..77 run setblock 182 22 374 terracotta
execute if score t_says.scene board matches 70..77 run setblock 180 22 374 terracotta
execute if score t_says.scene board matches 70..77 run setblock 184 22 376 terracotta
execute if score t_says.scene board matches 70..77 run setblock 182 22 376 terracotta

# 任务方块（四角）
execute if score t_says.scene board matches 70 run setblock 186 22 370 ice
execute if score t_says.scene board matches 70 run setblock 180 22 370 ice
execute if score t_says.scene board matches 70 run setblock 186 22 376 ice
execute if score t_says.scene board matches 70 run setblock 180 22 376 ice

execute if score t_says.scene board matches 71 run setblock 186 22 370 blue_ice
execute if score t_says.scene board matches 71 run setblock 180 22 370 blue_ice
execute if score t_says.scene board matches 71 run setblock 186 22 376 blue_ice
execute if score t_says.scene board matches 71 run setblock 180 22 376 blue_ice

execute if score t_says.scene board matches 72 run setblock 186 22 370 iron_block
execute if score t_says.scene board matches 72 run setblock 180 22 370 iron_block
execute if score t_says.scene board matches 72 run setblock 186 22 376 iron_block
execute if score t_says.scene board matches 72 run setblock 180 22 376 iron_block

execute if score t_says.scene board matches 73 run setblock 186 22 370 gold_block
execute if score t_says.scene board matches 73 run setblock 180 22 370 gold_block
execute if score t_says.scene board matches 73 run setblock 186 22 376 gold_block
execute if score t_says.scene board matches 73 run setblock 180 22 376 gold_block

execute if score t_says.scene board matches 74 run setblock 186 22 370 hay_block
execute if score t_says.scene board matches 74 run setblock 180 22 370 hay_block
execute if score t_says.scene board matches 74 run setblock 186 22 376 hay_block
execute if score t_says.scene board matches 74 run setblock 180 22 376 hay_block

execute if score t_says.scene board matches 75 run setblock 186 22 370 emerald_block
execute if score t_says.scene board matches 75 run setblock 180 22 370 emerald_block
execute if score t_says.scene board matches 75 run setblock 186 22 376 emerald_block
execute if score t_says.scene board matches 75 run setblock 180 22 376 emerald_block

execute if score t_says.scene board matches 76 run setblock 186 22 370 magma_block
execute if score t_says.scene board matches 76 run setblock 180 22 370 magma_block
execute if score t_says.scene board matches 76 run setblock 186 22 376 magma_block
execute if score t_says.scene board matches 76 run setblock 180 22 376 magma_block

execute if score t_says.scene board matches 77 run setblock 186 22 370 anvil
execute if score t_says.scene board matches 77 run setblock 180 22 370 anvil
execute if score t_says.scene board matches 77 run setblock 186 22 376 anvil
execute if score t_says.scene board matches 77 run setblock 180 22 376 anvil
