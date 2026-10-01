##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 组分队：一次把 wait.duel 里的所有人分成蓝 / 黄两队（走通用分队 API utils:team/distribute_cmd）
#   · 组队优先：同一个组队尽量分到同一队；整队放不下（人数不够或会让人数不平均）时拆开随机分，并提示被拆的人
#   · 队伍顺序 = cmds 列表顺序；每队上限 = 向上取整(人数 / 2)，所以没有组队时和以前的交替分配一样均匀
#   · 分队与发装备都在 duel/team/<队>.mcfunction 里（@s = 被分配的玩家）
function utils:team/distribute_cmd {players:"@a[team=wait.duel,gamemode=adventure]",cmds:["function minecraft:duel/team/blue","function minecraft:duel/team/yellow"]}
