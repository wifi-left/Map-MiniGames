##
## 给 storage minecraft:team_tmp next 补上 tid（=执行者自己的队伍编号）
##

execute store result storage minecraft:team_tmp next.tid int 1 run scoreboard players get @s team.id
