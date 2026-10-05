# 蠹虫雪球：给刚投出的雪球挂上影子标记（执行者 = 雪球，位置在雪球上）
# 照 item/fire_charge_launch.mcfunction 的第 14-15 行：
# 影子挂在雪球上当乘客，雪球撞到方块/实体消失的那一刻游戏会把乘客放回命中点，
# 影子便精确停在落点，由 bug_shadow 在那儿生成蠹虫
tag @s add bw.bug
execute at @s run summon marker ~ ~ ~ {Tags:["bw.bug.shadow","bw.bug.shadow.new"]}
# 把雪球上的队伍标签抄到影子上（4 行）
execute if entity @s[tag=bw.bug.blue] run tag @e[tag=bw.bug.shadow.new,limit=1] add bw.bug.blue
execute if entity @s[tag=bw.bug.red] run tag @e[tag=bw.bug.shadow.new,limit=1] add bw.bug.red
execute if entity @s[tag=bw.bug.yellow] run tag @e[tag=bw.bug.shadow.new,limit=1] add bw.bug.yellow
execute if entity @s[tag=bw.bug.green] run tag @e[tag=bw.bug.shadow.new,limit=1] add bw.bug.green
ride @e[tag=bw.bug.shadow.new,limit=1] mount @s
# 只有挂上了影子才允许它在落点生成（雪球已经存在，所以这里的 attached 总是成立）
execute if entity @e[tag=bw.bug.shadow.new] run tag @e[tag=bw.bug.shadow.new] add bw.bug.attached
tag @e[tag=bw.bug.shadow.new] remove bw.bug.shadow.new
