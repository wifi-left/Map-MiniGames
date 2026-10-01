# 分队 API 调用的最小单元：@s = 被分配到这一队的玩家（由 utils:team/distribute_cmd 逐个执行）
tag @s add ball.teamb
tellraw @s ["\n\u00a7c队伍B \u00a76是你的队伍。\n"]
title @s title ["\u00a7c队伍B"]
title @s subtitle ["\u00a76是你的队伍"]
