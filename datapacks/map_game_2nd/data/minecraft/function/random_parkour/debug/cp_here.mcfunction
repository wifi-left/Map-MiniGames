# 调试：在脚下强制铺一个记录点平台（复用正式逻辑 place_checkpoint）
# 注意：place_checkpoint 会顺带重掷"下一个记录点距离"，所以只用于调试，不要在意本轮节奏
execute align xyz positioned ~ ~-1 ~ run function minecraft:random_parkour/map/place/place_checkpoint
tellraw @s ["§b[DEBUG] 脚下已铺记录点平台，踩中心金块应出现 §6[记录点] §b提示"]
