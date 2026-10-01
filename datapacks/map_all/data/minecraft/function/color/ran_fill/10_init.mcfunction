##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 10: 斜条纹 45deg | a=3条 b=4条 c=6条
# 由 ../tools/color_floor_gen.py 生成，勿手改
# R0: 判定前必须是完整平面 —— 先铺满底色，图案只覆盖不挖空，收尾再 ensure_full 兜底
# 形状（变体）由 reroll 每回合掷一次，同一回合内不变；只有颜色每秒重掷
# 难度阶段：轮数 color.round >= 10 允许同族换尺寸；>= 15 允许形状变化
fill -7 17 75 32 17 114 air

function color/ran_fill/pick
data modify storage minecraft:temp c1 set from storage minecraft:temp block
# 此刻刚清空，replace air 等价于把底色铺满整个 36x36
function color/ran_fill/ensure_full with storage minecraft:temp

function color/ran_fill/pick
data modify storage minecraft:temp c2 set from storage minecraft:temp block

function color/ran_fill/pick
data modify storage minecraft:temp c3 set from storage minecraft:temp block

function color/ran_fill/pick
data modify storage minecraft:temp c4 set from storage minecraft:temp block

# 变体只做范围兜底（正常由 reroll 掷出），保证任何入口下都有图案
execute unless score color.ran.variant board matches 1..3 run scoreboard players set color.ran.variant board 1
# 难度阶段①轮数 >= 10：形状锁定，只允许在同族变体内换尺寸
execute if score color.round tick matches 10..14 if score color.ran.variant board matches 1..3 store result score color.ran.variant board run random value 1..3
execute if score color.ran.variant board matches 1 run function minecraft:color/ran_fill/10_a with storage minecraft:temp
execute if score color.ran.variant board matches 2 run function minecraft:color/ran_fill/10_b with storage minecraft:temp
execute if score color.ran.variant board matches 3 run function minecraft:color/ran_fill/10_c with storage minecraft:temp

# 兜底：任何残留 air 都补成底色（正常情况下是空操作）
function color/ran_fill/ensure_full with storage minecraft:temp

# 目标色：随机采样一个真实地板格（范围 17 保证落在已铺满区内）
summon marker 13.00 18 95.00 {Tags:["color.tmp"]}
spreadplayers 12.50 94.50 0 17 under 20 false @e[tag=color.tmp]
execute as @e[tag=color.tmp] at @s run clone ~ ~-1 ~ ~ ~-1 ~ -52 35 64 strict
kill @e[tag=color.tmp]
