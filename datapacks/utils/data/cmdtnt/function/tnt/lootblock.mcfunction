##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 只做"销毁方块 + 生成掉落物"这一件事。执行者 = 那个方块唯一的一条 boom 标记（在方块正中心）。
# 清掉旧掉落物是另一趟，放在 cmdtnt:rays 里、并且必须排在这一趟之前。
# 下面的 if block 只是兜底：正常情况下每一格方块只有一条标记，一格只会掉落一次。
execute if block ~ ~ ~ #cmdtnt:tnt_breakable run loot spawn ~ ~ ~ mine ~ ~ ~
# 刚生成的掉落物立刻设为免疫爆炸：爆炸对实体的伤害半径约为其方块半径的 2 倍，
# 不这么做的话，紧随其后的苦力怕爆炸会把同一发爆炸刚炸出来的掉落物一起吃掉。
execute if block ~ ~ ~ #cmdtnt:tnt_breakable run data merge entity @e[type=item,sort=nearest,limit=1,distance=..0.5] {Invulnerable:1b}
execute if block ~ ~ ~ #cmdtnt:tnt_breakable run setblock ~ ~ ~ air
