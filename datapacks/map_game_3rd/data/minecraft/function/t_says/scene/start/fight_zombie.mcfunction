##
## 击杀木乃伊（id 81）
## 铺一块 terracotta 平台（在清理标签里，reset 会清掉），然后给每名玩家各放一只靶子，
## 这样"谁先打死"才有意义（判定见 action/kill_mob：按击杀统计，谁打死的算谁的）
##

fill 176 22 377 182 22 384 terracotta
execute as @a[team=t_says,gamemode=adventure] run function minecraft:t_says/scene/special/spawn_husk
