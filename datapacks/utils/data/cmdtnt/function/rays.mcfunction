##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## TNT 爆炸模拟 · 射线爆破入口（宏）
## 用法：function cmdtnt:rays {range:<初始强度>,profile:"big|small"}
##
## range   —— 初始强度预算。沿射线每前进 0.5 格扣 5，穿过可爆破方块再按抗性额外扣
##            （末地石 30 / 深色橡木木板·梯子·切制砂岩 10 / 羊毛 3）。
##            能达到的距离 ≈ 0.5 × (ceil(range/5) − 1)：range 69 → 6.5 格，range 35 → 3.0 格。
## profile —— 决定能破坏哪些方块：
##            "big"   羊毛 / 深色橡木木板 / 梯子 / 切制砂岩 / 末地石（TNT 羊用）
##            "small" 只破坏 羊毛 / 深色橡木木板 / 梯子 / 切制砂岩（火焰弹用）
##            注意：抗性衰减（30/10/3）两种档位都一样，profile 只影响"能不能炸掉"。
##
## 只做射线采样与方块销毁：不发声、不产生粒子、不生成伤害实体。
## 爆炸状态存在标记实体自身的分数上（见 map_main/setup 里声明的 cmdtnt.* 目标），
## 同一刻多次爆炸互不干扰。
## boom 标记是"按方块"留的：tnt/mark 只给还没有标记的那一格留一个（标记落在方块正中心），
## 所以同一方块被多条射线、多段采样命中，也只有一条标记、销毁阶段只掉落一次。
## 反过来，销毁阶段不再依赖"同格标记谁先处理"——哪怕标记的处理顺序变了，结果也一样。
##
## 末尾是两趟独立遍历，顺序不能调换：
##   第一趟清掉爆炸范围内的旧掉落物，第二趟才销毁方块并生成掉落物。
##   合并成一趟的话，后处理的标记会把自己刚炸出来的掉落物也清掉。
kill @e[tag=cmd.tnt]
$summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.spawn","cmd.tnt.$(profile)"]}
$scoreboard players set @e[tag=cmd.tnt.spawn] cmdtnt.range $(range)
scoreboard players set @e[tag=cmd.tnt.spawn] cmdtnt.x 0
execute as @e[tag=cmd.tnt.spawn] at @s run tp @s ~ ~ ~ 0 -90
execute as @e[tag=cmd.tnt.spawn] run function cmdtnt:tnt/roundandshoot_x
execute as @e[tag=cmd.tnt.boom] at @s run kill @e[type=item,distance=0..1.2]
execute as @e[tag=cmd.tnt.boom] at @s run function cmdtnt:tnt/lootblock
kill @e[tag=cmd.tnt]
