##
## 通用分队 API（普通分队）：把选中的玩家尽量平均地分进给定的 MC 队伍列表
##
## 用法：
##   /function utils:team/distribute {players:"@a[tag=xxx]",teams:["teama","teamb"],after:""}
##
## 参数（宏，三个都要写，不需要的写空串/空表）：
##   players  原始玩家选择器（如 @a[tag=xxx]、@a[team=lobby]）
##   teams    队伍列表（MC 队伍名），**队伍数量 = 列表长度**；队伍不存在时 team join 会自动创建
##   after    分配完成后要执行的命令（会以每个被分配的玩家为执行者执行一次；不需要就写 ""）
##
## 组队优先：同一个组队的成员默认尽量分到同一队；只有“整队放不下、放进去会让人数不平均”时才拆开随机分。
##
## 实现说明见 note.md「通用分队 API」；核心逻辑在 utils:team/lib/start
##

$data modify storage minecraft:utils_tmp team set value {players:"$(players)",list:$(teams),after:"$(after)",mode:0}
function utils:team/lib/start with storage minecraft:utils_tmp team
