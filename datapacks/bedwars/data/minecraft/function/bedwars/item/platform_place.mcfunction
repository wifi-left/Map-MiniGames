# 救援平台：展开（前置判定已保证至少中心那一格是空气，keep 至少会填上它）
# keep = 只往空气里放，绝不会替换原有方块
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:slime_block keep
# 兜底：把玩家原地 tp 一下 —— 下坠太快时靠这一下把坠落状态重置，免得从平台里穿过去
tp @s ~ ~ ~
# 标记记住平台位置（收回时用它算 3×3），.new 保证不会认错别人的平台
summon marker ~ ~-1 ~ {Tags:["bw.pf","bw.pf.new"]}
scoreboard players set @e[tag=bw.pf.new] bw.pf.t 15
tag @e[tag=bw.pf.new] remove bw.pf.new
playsound minecraft:block.slime_block.place player @s ~ ~ ~ 1 1
title @s actionbar ["§a救援平台已展开 §7（15 秒后自动收回）"]
