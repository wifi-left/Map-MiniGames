# 速建防御塔：确定「是谁放的」 —— 由计分板统计 minecraft.used:zombie_spawn_egg 触发，执行者 = 放置者
# 1) 朝向：yaw×100 后分段（区间互不重叠；f0 = 南 +Z，f1 = 西 -X，f2 = 北 -Z，f3 = 东 +X）
#    「图纸的上方」= 玩家朝向，也就是这里的 f 对应的前向
execute store result score @s bw.tmp.p run data get entity @s Rotation[0] 100
execute if score @s bw.tmp.p matches -4500..4499 as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.f0
execute if score @s bw.tmp.p matches 4500..13499 as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.f1
execute if score @s bw.tmp.p matches 13500..18000 as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.f2
execute if score @s bw.tmp.p matches -18000..-13500 as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.f2
execute if score @s bw.tmp.p matches -13499..-4500 as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.f3

# 2) 配色：跟随放置者队伍（没有队伍就不打颜色标签 → 放置时默认白色）
execute as @s[team=bw.blue] as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.cblue
execute as @s[team=bw.red] as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.cred
execute as @s[team=bw.yellow] as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.cyellow
execute as @s[team=bw.green] as @e[tag=bw.tower.noface,sort=nearest,limit=1,distance=..8] run tag @s add bw.tower.cgreen

# 3) 定好了就不再重复匹配（之后 tower_place 见到 noface 才说明统计没触发 → 走兜底）
tag @e[tag=bw.tower.f0] remove bw.tower.noface
tag @e[tag=bw.tower.f1] remove bw.tower.noface
tag @e[tag=bw.tower.f2] remove bw.tower.noface
tag @e[tag=bw.tower.f3] remove bw.tower.noface

# 4) 诊断计数（正常路径只加这个分数，不发提示）：/scoreboard players get bw.tower.hit board
scoreboard players add bw.tower.hit board 1
