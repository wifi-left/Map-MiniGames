##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 组分队：一次把 tnt.tanteam 里的所有人分成 A / B 两侧（走通用分队 API utils:team/distribute_cmd）
#   · TNTWARS 的“队伍”是标签（tntwars.a / tntwars.b），全体玩家都在同一个 MC 队伍 play.tntwars 里，
#     所以这里用“命令列表”模式（cmds）而不是“队伍名”模式
#   · 组队优先：同一个组队尽量分到同一侧；整队放不下（人数不够或会让人数不平均）时拆开随机分，并提示被拆的人
#   · 每侧上限 = 向上取整(人数 / 2)，所以没有组队时和以前的交替分配一样均匀
function utils:team/distribute_cmd {players:"@a[tag=tnt.tanteam]",cmds:["function minecraft:tntwars/team/a","function minecraft:tntwars/team/b"]}
tag @a remove tnt.tanteam
