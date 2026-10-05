# 铁傀儡守卫：确定「是谁放的」并归属队伍 —— 由计分板统计 minecraft.used:iron_golem_spawn_egg 触发，执行者 = 放置者
# 1) 队伍归属跟随放置者。team join 一次同时解决两件事：
#    ① 索敌不会打队友（目标选择走 isAlliedTo = 计分板队伍判定）
#    ② 近战自带的范围击退也不会误伤队友（那段同样走 isAlliedTo）
execute as @s[team=bw.blue] run team join bw.blue @e[tag=bw.golem.noface,sort=nearest,limit=1,distance=..8]
execute as @s[team=bw.red] run team join bw.red @e[tag=bw.golem.noface,sort=nearest,limit=1,distance=..8]
execute as @s[team=bw.yellow] run team join bw.yellow @e[tag=bw.golem.noface,sort=nearest,limit=1,distance=..8]
execute as @s[team=bw.green] run team join bw.green @e[tag=bw.golem.noface,sort=nearest,limit=1,distance=..8]

# 2) 定好了就不再重复匹配（之后 golem_place 见到 noface 才说明统计没触发 → 走兜底）
tag @e[tag=bw.golem.noface,sort=nearest,limit=1,distance=..8] remove bw.golem.noface

# 3) 诊断计数（正常路径只加这个分数，不发提示）：/scoreboard players get bw.golem.hit board
scoreboard players add bw.golem.hit board 1
