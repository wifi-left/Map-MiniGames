##
## 读取 @s（执行者）的玩家名字 → storage minecraft:team_tmp probe.name
## 解析失败时不写入（probe 不存在），调用方应据此跳过该玩家
##
## 做法：先给目标打标签，再召唤一个不可见的文本展示实体，其文本组件用 selector 组件
##   {selector:"@a[tag=team.probe.target,limit=1]"}
## 服务端会把选择器解析成名字；解析结果由 lib/probe_read 从实体数据里读回
##   （player 字段只吃档案复合标签、不支持选择器，所以这里必须用 selector 组件）
##

kill @e[type=text_display,tag=team.probe]
tag @a remove team.probe.target
data remove storage minecraft:team_tmp probe

tag @s add team.probe.target
data modify storage minecraft:team_tmp selargs set value {sel:"@a[tag=team.probe.target,limit=1]"}
function minecraft:team/lib/probe_summon_selector with storage minecraft:team_tmp selargs
function minecraft:team/lib/probe_read
tag @s remove team.probe.target
