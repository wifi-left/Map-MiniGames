##
## 调试：验证名字探测（文本展示实体 + selector 组件）
##
## 用法：/function minecraft:team/debug/name_test
##       测试假人：/execute as <假人> run function minecraft:team/debug/name_test
## 结果广播给所有人（假人自己没有聊天栏）
## name = 最终解析出的名字；raw = 实体 text 字段的原始内容
##

kill @e[type=text_display,tag=team.probe]
tag @a remove team.probe.target
data remove storage minecraft:team_tmp probe
data remove storage minecraft:team_tmp raw

tag @s add team.probe.target
data modify storage minecraft:team_tmp selargs set value {sel:"@a[tag=team.probe.target,limit=1]"}
function minecraft:team/lib/probe_summon_selector with storage minecraft:team_tmp selargs
execute if entity @e[type=text_display,tag=team.probe] run data modify storage minecraft:team_tmp raw set from entity @e[type=text_display,tag=team.probe,limit=1] text
function minecraft:team/lib/probe_read
tag @s remove team.probe.target

tellraw @a ["§e[组队调试] ",{"selector":"@s","color":"aqua"}," §7-> name=",{"nbt":"probe.name","storage":"minecraft:team_tmp","color":"gold"}," §7raw=",{"nbt":"raw","storage":"minecraft:team_tmp","color":"gray"}]
