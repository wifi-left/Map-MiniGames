##
## 从当前探测实体（tag team.probe）读出解析结果 → storage minecraft:team_tmp probe.name
##
## selector 组件解析出来的结构长这样（实测）：
##   text: ""            ← 显示文本是空的
##   insertion: "Alex"   ← 原始玩家名，干净、不带队伍前缀 ✔
##   extra: [{text:"Lobby", extra:[{text:" | "}]}, "Alex", ""]   ← 可见的显示名带前缀
##   hover_event: {uuid:[I;…]}                                   ← 还能顺手拿到真实 UUID
## 因此按下面的顺序尝试，每次尝试后都用 probe_validate 校验，不合格就继续下一个
##

data remove storage minecraft:team_tmp probe

# 1) text.insertion —— 最干净：原始玩家名
execute if entity @e[type=text_display,tag=team.probe] run data modify storage minecraft:team_tmp probe.name set from entity @e[type=text_display,tag=team.probe,limit=1] text.insertion
function minecraft:team/lib/probe_validate

# 2) text.player.name —— 解析成玩家档案的写法
execute if entity @e[type=text_display,tag=team.probe] unless data storage minecraft:team_tmp probe run data modify storage minecraft:team_tmp probe.name set from entity @e[type=text_display,tag=team.probe,limit=1] text.player.name
function minecraft:team/lib/probe_validate

# 3) text —— 整个 text 被替换成字符串
execute if entity @e[type=text_display,tag=team.probe] unless data storage minecraft:team_tmp probe run data modify storage minecraft:team_tmp probe.name set from entity @e[type=text_display,tag=team.probe,limit=1] text
function minecraft:team/lib/probe_validate

# 4) text.text —— 被替换成文本组件
execute if entity @e[type=text_display,tag=team.probe] unless data storage minecraft:team_tmp probe run data modify storage minecraft:team_tmp probe.name set from entity @e[type=text_display,tag=team.probe,limit=1] text.text
function minecraft:team/lib/probe_validate

# 5) text.extra[1] —— 兜底：解析成“前缀 + 名字”复合组件时，第 2 段就是名字
execute if entity @e[type=text_display,tag=team.probe] unless data storage minecraft:team_tmp probe run data modify storage minecraft:team_tmp probe.name set from entity @e[type=text_display,tag=team.probe,limit=1] text.extra[1]
function minecraft:team/lib/probe_validate

kill @e[type=text_display,tag=team.probe]
