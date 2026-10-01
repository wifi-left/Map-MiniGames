# 组分队：一次把参加球类游戏的人分成 A / B 两队（走通用分队 API utils:team/distribute_cmd）
#   · 足球(type 0) 与 躲避球(type 1) 共用本函数（ballgame/start.mcfunction 里 type matches 0..1），
#     所以两个模式都会变成“组队优先”
#   · 组队优先：同一个组队尽量分到同一队；整队放不下（人数不够或会让人数不平均）时拆开随机分，并提示被拆的人
#   · 分队动作在 ballgame/team/<队>.mcfunction；这里先给候选池打标签，分完清掉
tag @a[team=ballgame,gamemode=adventure] add ballgame.tobeteamed
function utils:team/distribute_cmd {players:"@a[tag=ballgame.tobeteamed]",cmds:["function minecraft:ballgame/team/a","function minecraft:ballgame/team/b"]}
tag @a remove ballgame.tobeteamed
