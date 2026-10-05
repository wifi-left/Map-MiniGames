# 影子标记每 tick 处理（执行者 = 影子，位置已在影子上）
# "正在骑乘"由 tick 里用 execute on passengers 判定的 bw.fb.riding 标记给出，
# 比读 RootVehicle 这类 NBT 可靠；关系不存在时 on 直接返回 0 个元素，不会报错。
#
# 挂载成功：影子随火球飞行，火球撞方块炸开时被放回精确命中点 → 就地爆破（精确）
# 挂载失败：走下面的位置跟随退化路径，最多滞后一个 tick（约 1 格），爆破半径 2 格足以覆盖命中点

# 1) 没在骑乘、但自己的火球还在附近 → 贴上去（位置跟随退化路径）
execute if entity @s[tag=!bw.fb.riding] if entity @e[type=fireball,tag=bw.fb,distance=..4] run tp @s @e[type=fireball,tag=bw.fb,sort=nearest,limit=1]
# 2) 自己的火球没了 → 在影子位置爆破
execute if entity @s[tag=bw.fb.attached] unless entity @s[tag=bw.fb.riding] unless entity @e[type=fireball,tag=bw.fb,distance=..4] run function minecraft:bedwars/item/fire_charge_boom
# 3) 火球压根没生成成功（从没打上标记）→ 清掉影子，不在原地爆炸
execute unless entity @s[tag=bw.fb.attached] unless entity @e[type=fireball,tag=bw.fb,distance=..4] run kill @s
