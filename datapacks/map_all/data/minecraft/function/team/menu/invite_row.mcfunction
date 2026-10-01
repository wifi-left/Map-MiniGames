##
## 为一个可邀请玩家追加按钮（以“被邀请者”为上下文执行）
## 名字解析失败时自动跳过该玩家
## 按钮命令用 /trigger（等级 0，普通玩家可用）：值 = 对方的 park.uuid，写在 team.pick.invite 上
## 头像用对方 UUID 档案（{player:{id:[I;...]}}），不依赖按名字查档案
##

execute unless score @s park.uuid matches 1.. run function minecraft:team/lib/ensure_uuid
function minecraft:team/lib/probe_name
execute unless data storage minecraft:team_tmp probe run return 0

# 对方的 park.uuid（键：判断是否已邀请过）；按钮触发值就是它本身
execute store result storage minecraft:team_tmp probe.key int 1 run scoreboard players get @s park.uuid

# 头像用的 UUID 四段
execute store result storage minecraft:team_tmp probe.u0 int 1 run data get entity @s UUID[0]
execute store result storage minecraft:team_tmp probe.u1 int 1 run data get entity @s UUID[1]
execute store result storage minecraft:team_tmp probe.u2 int 1 run data get entity @s UUID[2]
execute store result storage minecraft:team_tmp probe.u3 int 1 run data get entity @s UUID[3]

function minecraft:team/menu/invite_row_append with storage minecraft:team_tmp probe
