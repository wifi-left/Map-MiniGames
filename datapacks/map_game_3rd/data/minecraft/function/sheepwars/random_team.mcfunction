# 组分队：一次把 wait.sheepwars 里的所有人分成 A / B 两队（走通用分队 API utils:team/distribute_cmd）
#   · 组队优先：同一个组队尽量分到同一队；整队放不下（人数不够或会让人数不平均）时拆开随机分，并提示被拆的人
#   · 队伍顺序 = cmds 列表顺序；每队上限 = 向上取整(人数 / 2)，所以没有组队时和以前的交替分配一样均匀
#   · 分队动作在 team/<队>.mcfunction；调用方 start.mcfunction 先给这些人打上 sheepwars.tobeteamed 标签，这里用完清掉
function utils:team/distribute_cmd {players:"@a[tag=sheepwars.tobeteamed]",cmds:["function minecraft:sheepwars/team/a","function minecraft:sheepwars/team/b"]}
tag @a remove sheepwars.tobeteamed
