# 分队 API 调用的最小单元：@s = 被分配到这一队的玩家（由 utils:team/distribute_cmd 逐个执行）
team join play.duel.yellow @s
tellraw @s ["§a你加入了 §e战桥黄队"]
execute at @s run function minecraft:duel/item
