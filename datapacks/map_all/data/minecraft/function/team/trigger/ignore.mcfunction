##
## /trigger team set 10 —— 忽略邀请（静默清除，邀请者不会收到“拒绝”提示）
##

execute unless score @s park.uuid matches 1.. run return run tellraw @s ["§c你没有待处理的组队邀请。"]
function minecraft:team/lib/build_self_args
function minecraft:team/action/ignore with storage minecraft:team_tmp self
