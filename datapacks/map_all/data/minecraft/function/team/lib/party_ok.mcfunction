##
## 判断 @s 所在的组队能否“整队放进这一批”（由 team/api/party_pick 对候选池里的每个人调用）
## 放得下就给 @s 打 team.ok，让 party_pick 优先挑这类人，从而整队一起分
## 依赖：team.q（候选池标签）、tmp.team.room2（目标队空位数）
##

scoreboard players set tmp.team.ppid board 0
execute store result score tmp.team.ppid board run scoreboard players get @s team.id
execute unless score tmp.team.ppid board matches 1.. run return 0

# 这个组队在候选池里有几个人
scoreboard players set tmp.team.pcnt board 0
execute as @a[tag=team.q] if score @s team.id = tmp.team.ppid board run scoreboard players add tmp.team.pcnt board 1

# 目标队放得下整队 → 标记
execute if score tmp.team.pcnt board <= tmp.team.room2 board run tag @s add team.ok
