# 分队 API 调用的最小单元：@s = 被分配到这一队的玩家（由 utils:team/distribute_cmd 逐个执行）
team join play.battle.r @s
tellraw @s ["§a你加入了 §c红队"]
