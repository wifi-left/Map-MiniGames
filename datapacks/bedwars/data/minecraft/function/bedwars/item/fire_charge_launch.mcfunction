# 发射火焰弹（执行者 = 玩家）
# 飞行速度由两个数决定，想自己再调就直接改这两处（稳态速度 ≈ 加速度 ÷ (1-0.95)）：
#   慢        初速 0.8   加速度 0.05  → 约 1.0 格/tick
#   中（当前）初速 1.0   加速度 0.075 → 约 1.5 格/tick
#   快        初速 1.2   加速度 0.1   → 约 2.0 格/tick
#   炮弹      初速 1.2   加速度 0.4   → 越飞越快，别用
# Motion 技巧：把标记放在世界原点沿视线 1.0 格处，它的绝对 Pos 就正好是想要的初速度向量
execute at @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1.0 {Tags:["bw.fb.vec"]}
execute at @s anchored eyes run summon fireball ^ ^ ^1 {Tags:["bw.fb","bw.fb.new"],ExplosionPower:2,acceleration_power:0.075d}
data modify entity @e[tag=bw.fb.new,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=bw.fb.new,limit=1] Motion set from entity @e[tag=bw.fb.vec,limit=1] Pos
# 影子标记挂到火球上当乘客：火球撞方块炸开的那一刻游戏会把乘客放回命中点，
# 影子便精确停在爆炸位置，由 fire_charge_shadow 在那儿做方块爆破
execute at @s anchored eyes run summon marker ^ ^ ^0.5 {Tags:["bw.fb.shadow","bw.fb.shadow.new"]}
ride @e[tag=bw.fb.shadow.new,limit=1] mount @e[tag=bw.fb.new,limit=1]
# 只有火球确实生成出来了才允许影子引爆：
# 贴脸发射（火球当拍就炸、还没轮到影子 tick）也能正常爆破，而火球没生成时不会在脚边自爆
execute if entity @e[tag=bw.fb.new] run tag @e[tag=bw.fb.shadow.new] add bw.fb.attached
tag @e[tag=bw.fb.new] remove bw.fb.new
tag @e[tag=bw.fb.shadow.new] remove bw.fb.shadow.new
kill @e[tag=bw.fb.vec]
