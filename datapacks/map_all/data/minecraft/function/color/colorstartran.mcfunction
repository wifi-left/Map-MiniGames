##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tag @e[tag=color.test] add color.Nadd
function minecraft:color/setcolor

# 旧类型里唯一允许变化的是 5：它的图案是 clone 地图 x36..75 的渐变源行，可选形状只有那 17 行预建图案，
# 不参与形状锁定、也不受轮数限制 —— 每次生成都可以换行（1-4 始终不动）
execute if score color.rantype board matches 5 store result storage minecraft:temp random_value int 1 run random value 2..18

execute if score color.rantype board matches 1 run function minecraft:color/ran_fill/1_init
execute if score color.rantype board matches 2 run function minecraft:color/ran_fill/1_init
execute if score color.rantype board matches 3 run function minecraft:color/ran_fill/3_init
execute if score color.rantype board matches 4 run function minecraft:color/ran_fill/4_init
execute if score color.rantype board matches 5 run function minecraft:color/ran_fill/5_init
execute if score color.rantype board matches 6 run function minecraft:color/ran_fill/6_init
execute if score color.rantype board matches 7 run function minecraft:color/ran_fill/7_init
execute if score color.rantype board matches 8 run function minecraft:color/ran_fill/8_init
execute if score color.rantype board matches 9 run function minecraft:color/ran_fill/9_init
execute if score color.rantype board matches 10 run function minecraft:color/ran_fill/10_init
execute if score color.rantype board matches 11 run function minecraft:color/ran_fill/11_init
execute if score color.rantype board matches 12 run function minecraft:color/ran_fill/12_init
execute if score color.rantype board matches 13 run function minecraft:color/ran_fill/13_init
execute if score color.rantype board matches 14 run function minecraft:color/ran_fill/14_init
execute if score color.rantype board matches 15 run function minecraft:color/ran_fill/15_init
execute if score color.rantype board matches 16 run function minecraft:color/ran_fill/16_init
execute if score color.rantype board matches 17 run function minecraft:color/ran_fill/17_init
# 1: Block - color.ran.blockwidth (Block Width)
# 2: All random
# 3: Line 星射线
# 4: Fixed
# 5: Gradient 克隆地图 x36..75 的渐变源行
# 6: 棋盘格  7: 细线网格  8: 十字/箭头
# 9: 散点噪点  10: 斜条纹45°  11: 随机横竖条纹  12: 同心圆环
# 13: 螺旋  14: 放射扇形  15: 沟壑/裂缝  16: 波点阵列  17: 随机矩形拼块
# 6-17 全部由 ../tools/color_floor_gen.py 生成：先铺满底色再覆盖，判定前恒为整平面
# 形状参数（网格宽高/条数/圈数/扇数/布局）由 ran_fill/reroll 每回合掷一次，回合内固定；只有颜色每秒重掷
# 难度阶段由轮数计数器 color.round 判定（summon 每回合 +1，start 清零）：
#   轮数 >= 10 阶段一：形状锁定，只允许"同族"变体内换尺寸（6/7/8/10/11/12/13/14/16；散点 9 换印章大小）
#   轮数 >= 15 阶段二：形状也允许变化（6-17 整表重掷）
# 旧类型 1-4 不参与难度变化，形状与尺寸在回合内始终不变；
# 旧类型 5 的 clone 源行不受轮数限制，每次生成都可换行
# -5 17 77 30 17 112

# 色卡 -52 35 61
execute as @a[team=play.color] at @s run playsound minecraft:ui.button.click player @s

