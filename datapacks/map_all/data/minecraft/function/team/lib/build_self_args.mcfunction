##
## 写入 storage minecraft:team_tmp self = {key:自己的park.uuid, tid:自己的队伍ID(0=无队伍)}
## 用于主菜单等需要“自己的队伍键”的宏
##

data modify storage minecraft:team_tmp self set value {key:0,tid:0}
execute store result storage minecraft:team_tmp self.key int 1 run scoreboard players get @s park.uuid
execute if score @s team.id matches 1.. store result storage minecraft:team_tmp self.tid int 1 run scoreboard players get @s team.id
