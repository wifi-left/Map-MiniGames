##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 每回合只掷一次的随机参数 | ../tools/color_floor_gen.py 生成，勿手改
# 调用点：summon（正式开局，每回合一次）与 color/test（调试）
# 各类型的 N_init 只读这些值，不自己重掷 —— 正常回合内形状固定
# 难度阶段改由轮数计数器 color.round 判定（N_init 里自带）：>= 10 同族换尺寸、>= 15 形状可变
# 1..2：方块宽度（原有的每回合参数）
execute if score color.rantype board matches 1..2 store result score color.ran.blockwidth board run random value 1..4
# 5：渐变源行这里只是回合起始值；它不参与形状锁定，colorstartran 每次生成都会再重掷一次
execute if score color.rantype board matches 5 store result storage minecraft:temp random_value int 1 run random value 2..18
# 6..17：图案变体（网格宽高/条数/圈数/扇数/布局）
execute if score color.rantype board matches 6 store result score color.ran.variant board run random value 1..3
execute if score color.rantype board matches 7 store result score color.ran.variant board run random value 1..2
execute if score color.rantype board matches 8 store result score color.ran.variant board run random value 1..3
# 9 散点：印章大小（位置每秒重掷，大小本回合固定）
execute if score color.rantype board matches 9 store result score color.ran.blockwidth board run random value 2..4
execute if score color.rantype board matches 10 store result score color.ran.variant board run random value 1..3
execute if score color.rantype board matches 11 store result score color.ran.variant board run random value 1..6
execute if score color.rantype board matches 12 store result score color.ran.variant board run random value 1..3
execute if score color.rantype board matches 13 store result score color.ran.variant board run random value 1..4
execute if score color.rantype board matches 14 store result score color.ran.variant board run random value 1..3
execute if score color.rantype board matches 15 store result score color.ran.variant board run random value 1..2
execute if score color.rantype board matches 16 store result score color.ran.variant board run random value 1..2
execute if score color.rantype board matches 17 store result score color.ran.variant board run random value 1..3
