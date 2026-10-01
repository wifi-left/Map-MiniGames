##
## 通用分队 API（自定义命令分队）：每个队伍对应一条命令，分到哪队就执行哪条命令
##
## 用法：
##   /function utils:team/distribute_cmd {players:"@a[tag=xxx]",cmds:["say i joined a","say i joined b"]}
##
## 参数（宏，两个都要写）：
##   players  原始玩家选择器（如 @a[tag=xxx]）
##   cmds     命令列表，**队伍数量 = 列表长度**；分到第 i 队的每个玩家都会执行第 i 条命令
##            （命令以该玩家为执行者运行，所以命令里可以正常用 @s；空字符串会导致执行失败，请不要留空）
##
## 组队优先：与 utils:team/distribute 相同 —— 同一个组队尽量分到同一队，放不下才拆开随机分。
##
## 常见用法：cmds:["function game/join/a","function game/join/b"]，各自函数里再用 @s 做传送、发装备等
##

$data modify storage minecraft:utils_tmp team set value {players:"$(players)",list:$(cmds),after:"",mode:1}
function utils:team/lib/start with storage minecraft:utils_tmp team
