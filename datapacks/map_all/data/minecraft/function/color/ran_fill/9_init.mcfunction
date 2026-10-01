##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 9: 散点噪点 confetti | 位置每秒重掷，大小每回合固定（16 块）
# 由 ../tools/color_floor_gen.py 生成，勿手改
# R0: 判定前必须是完整平面 —— 先铺满底色，图案只覆盖不挖空，收尾再 ensure_full 兜底
fill -7 17 75 32 17 114 air

function color/ran_fill/pick
data modify storage minecraft:temp c1 set from storage minecraft:temp block
# 此刻刚清空，replace air 等价于把底色铺满整个 36x36
function color/ran_fill/ensure_full with storage minecraft:temp

# 散点：16 块；位置由 spreadplayers 每秒重掷（可变），大小读 color.ran.blockwidth（每回合固定，不可变）
# range 14：印章沿 -x/+z 生长（与 2_place 同向），最大边长 4 时落点与色块仍在可玩区内
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
summon marker 13.00 18 95.00 {Tags:["color.dot"]}
spreadplayers 12.50 94.50 0 14 under 20 false @e[tag=color.dot]
# 难度阶段：轮数 >= 10 后每回合内也重掷印章大小（形状=散点方块，天然锁定）
execute if score color.round tick matches 10.. store result score color.ran.blockwidth board run random value 2..4
execute if score color.ran.blockwidth board matches 1 as @e[tag=color.dot] at @s positioned ~ ~-1 ~ run function minecraft:color/ran_fill/stamp1
execute if score color.ran.blockwidth board matches 2 as @e[tag=color.dot] at @s positioned ~ ~-1 ~ run function minecraft:color/ran_fill/stamp2
execute if score color.ran.blockwidth board matches 3 as @e[tag=color.dot] at @s positioned ~ ~-1 ~ run function minecraft:color/ran_fill/stamp3
execute if score color.ran.blockwidth board matches 4 as @e[tag=color.dot] at @s positioned ~ ~-1 ~ run function minecraft:color/ran_fill/stamp4
kill @e[tag=color.dot]

# 兜底：任何残留 air 都补成底色（正常情况下是空操作）
function color/ran_fill/ensure_full with storage minecraft:temp

# 目标色：随机采样一个真实地板格（范围 17 保证落在已铺满区内）
summon marker 13.00 18 95.00 {Tags:["color.tmp"]}
spreadplayers 12.50 94.50 0 17 under 20 false @e[tag=color.tmp]
execute as @e[tag=color.tmp] at @s run clone ~ ~-1 ~ ~ ~-1 ~ -52 35 64 strict
kill @e[tag=color.tmp]
