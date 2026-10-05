# 右键「职业选择」道具 → 弹出职业对话框
# 由进度 minecraft:bedwars/class_select 触发（consumable 完成时物品已经被吃掉）
advancement revoke @s only minecraft:bedwars/class_select
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0

# 先把道具补回来：玩家可能关掉对话框不选，那样手里必须还留着这个道具
function minecraft:bedwars/item/give_class_pick

dialog show @s minecraft:bedwars/class
