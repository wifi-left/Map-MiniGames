##
## 通用分队 API 的公共入口（由 utils:team/distribute 与 utils:team/distribute_cmd 调用，一般不用直接调）
## 宏：$(players) 玩家选择器、$(list) 队伍列表、$(after) 分配后命令、$(mode) 0=列表是队伍名 1=列表是命令
##
## 分配思路：
##   1. 把选择器匹配到的玩家收进候选池（内部标签 utils.team.pool）
##   2. 每队人数上限 cap = 向上取整(候选人数 / 队伍数)，按“开始分配前”的人数算一次（中途不重算）
##   3. 反复取“当前人数最少的一队”，让组队优先选出一批人（整队放得下就整队）分进去，直到池子分完
##   因为每一批都进人数最少的队、且不超过 cap，所以同队优先不会让任何一队人数超出上限，整体仍然均匀
##

# 队伍列表不能为空（队伍数量 = 列表长度）
scoreboard players set tmp.utils.n board 0
execute store result score tmp.utils.n board run data get storage minecraft:utils_tmp team.list
execute unless score tmp.utils.n board matches 1.. run return run tellraw @s [{"text":"[分队API] 队伍列表为空，无法分队。","color":"red"}]

# 候选池
tag @a remove utils.team.pool
$tag $(players) add utils.team.pool
scoreboard players set tmp.utils.pool board 0
execute as @a[tag=utils.team.pool] run scoreboard players add tmp.utils.pool board 1
execute unless score tmp.utils.pool board matches 1.. run return run tellraw @s [{"text":"[分队API] 选择器没有匹配到任何玩家。","color":"red"}]

# 每队人数上限（向上取整）
scoreboard players operation tmp.utils.cap board = tmp.utils.pool board
scoreboard players operation tmp.utils.cap board /= tmp.utils.n board
scoreboard players operation tmp.utils.rem board = tmp.utils.pool board
scoreboard players operation tmp.utils.rem board %= tmp.utils.n board
execute if score tmp.utils.rem board matches 1.. run scoreboard players add tmp.utils.cap board 1

# 本次分配的人数记录：team.counts."<队伍下标>"，键不存在视为 0，所以每次调用先清空
execute if data storage minecraft:utils_tmp team.counts run data remove storage minecraft:utils_tmp team.counts
data modify storage minecraft:utils_tmp team.counts set value {}

# 开始循环
function utils:team/lib/step
