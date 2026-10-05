# 蠹虫雪球的影子每 tick 处理（执行者 = 影子，位置已在影子上）
# 逐字照 item/fire_charge_shadow.mcfunction：
# "正在骑乘"由 tick 里用 execute on passengers 判定的 bw.bug.riding 标记给出，比读 NBT 可靠
#   挂载成功：影子随雪球飞行，雪球撞方块消失时被放回精确命中点 → 就地生成蠹虫（精确）
#   挂载失败：走位置跟随退化路径，最多滞后一个 tick（约 1 格），足以覆盖落点

# 1) 没在骑乘、但自己的雪球还在附近 → 贴上去（位置跟随退化路径）
execute if entity @s[tag=!bw.bug.riding] if entity @e[type=snowball,tag=bw.bug,distance=..4] run tp @s @e[type=snowball,tag=bw.bug,sort=nearest,limit=1]
# 2) 自己的雪球没了 → 在影子位置生成蠹虫
execute if entity @s[tag=bw.bug.attached] unless entity @s[tag=bw.bug.riding] unless entity @e[type=snowball,tag=bw.bug,distance=..4] run function minecraft:bedwars/item/bug_spawn
# 3) 影子压根没挂上 → 清掉，不在原地生成
execute unless entity @s[tag=bw.bug.attached] unless entity @e[type=snowball,tag=bw.bug,distance=..4] run kill @s
