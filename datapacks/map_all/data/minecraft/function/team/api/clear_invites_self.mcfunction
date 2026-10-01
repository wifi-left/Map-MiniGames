##
## 清空自己的组队邀请记录（以“重新加入游戏的玩家”为执行者调用）
## 调用点：map_main 的 lobby/lobby_enter 里 scores={leave=1..} 那一段
##   1) 别人发给我的邀请：键就是我的 park.uuid
##   2) 我发出去的邀请：邀请记录里 from 等于我的名字
##

scoreboard players set tmp.team.clear.hit board 0

# 1）收件箱
data modify storage minecraft:team_tmp selfinv set value {key:0}
execute store result storage minecraft:team_tmp selfinv.key int 1 run scoreboard players get @s park.uuid
function minecraft:team/lib/invite_drop with storage minecraft:team_tmp selfinv

# 2）我发出去的：先看有没有邀请记录，没有就省掉一次名字解析
scoreboard players set tmp.team.clear.n board 0
execute store result score tmp.team.clear.n board run data get storage minecraft:team invite_keys
execute if score tmp.team.clear.n board matches 1.. at @s run function minecraft:team/lib/probe_name
execute if score tmp.team.clear.n board matches 1.. if data storage minecraft:team_tmp probe run function minecraft:team/lib/clear_sent_all with storage minecraft:team_tmp probe

# 清掉过东西才提示一句，避免打扰
execute if score tmp.team.clear.hit board matches 1.. run tellraw @s ["§7你之前的组队邀请记录已清空。\n"]
