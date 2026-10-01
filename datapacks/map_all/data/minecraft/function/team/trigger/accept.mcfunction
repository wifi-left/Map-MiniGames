##
## /trigger team set 2 —— 接受组队邀请
##

execute unless score @s park.uuid matches 1.. run return run tellraw @s ["§c你没有待处理的组队邀请。"]
function minecraft:team/lib/build_self_args
function minecraft:team/action/accept with storage minecraft:team_tmp self
