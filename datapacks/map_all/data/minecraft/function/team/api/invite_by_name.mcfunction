##
## 管理员 / 测试用：以执行者为邀请者，按名字直接给某位玩家发组队邀请（不需要打开邀请列表）
##
## 用法：
##   /execute as <邀请者> run function minecraft:team/api/invite_by_name {target:"bot1"}
##
## 效果与在邀请列表里点击对方一致：对方会收到聊天栏的接受 / 拒绝提示，
## 之后可以让对方执行 /trigger team set 2 接受（假人用 team/api/trigger 代执行）
##

$execute unless entity @a[name="$(target)"] run return run tellraw @s ["§c该玩家已不在线。\n"]
$execute as @a[name="$(target)"] at @s run function minecraft:team/lib/ensure_uuid
$data modify storage minecraft:team_tmp args set value {targetkey:0,targetname:"$(target)"}
$execute store result storage minecraft:team_tmp args.targetkey int 1 run scoreboard players get $(target) park.uuid
function minecraft:team/action/invite with storage minecraft:team_tmp args
