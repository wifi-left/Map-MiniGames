##
## 通用分队 API 主循环（每轮分出一批人）
##   找人数最少的一队 → 选一批人（组队优先：整队放得下就整队）→ 执行该队动作 → 回到池子继续
##

# 池子空了（正常由上一轮收尾时不会进来）→ 直接结束
execute unless entity @a[tag=utils.team.pool] run return 0

# 1）找当前人数最少的一队（下标存 tmp.utils.minidx，人数存 tmp.utils.min）
scoreboard players set tmp.utils.min board 2147483647
scoreboard players set tmp.utils.minidx board 0
scoreboard players set tmp.utils.i board 0
data modify storage minecraft:utils_tmp idx set value {i:0}
function utils:team/lib/min_i with storage minecraft:utils_tmp idx

# 2）这一批最多能放几人 = 每队上限 − 该队现有人数；再让组队系统选出一批人
scoreboard players operation team.room board = tmp.utils.cap board
scoreboard players operation team.room board -= tmp.utils.min board
tag @a remove team.batch
data modify storage minecraft:utils_tmp squad set value {sel:"@a[tag=utils.team.pool]"}
function minecraft:team/api/party_pick with storage minecraft:utils_tmp squad

# 兜底：没有组队系统（或没选到人）时至少分一个人，保证循环一定推进
execute unless entity @a[tag=team.batch] if entity @a[tag=utils.team.pool] run tag @r[tag=utils.team.pool] add team.batch

# 3）按目标队的方式处理这批人（先数出这批有几人，用于统计各队人数）
scoreboard players set tmp.utils.batch board 0
execute as @a[tag=team.batch] run scoreboard players add tmp.utils.batch board 1
execute store result storage minecraft:utils_tmp idx.i int 1 run scoreboard players get tmp.utils.minidx board
function utils:team/lib/apply_i with storage minecraft:utils_tmp idx

# 4）这批人移出候选池：还有人就继续下一批，分完了就清理临时数据
tag @a[tag=team.batch] remove utils.team.pool
tag @a remove team.batch
execute if entity @a[tag=utils.team.pool] run function utils:team/lib/step
execute unless entity @a[tag=utils.team.pool] run tag @a remove utils.team.pool
execute unless entity @a[tag=utils.team.pool] run data remove storage minecraft:utils_tmp team
