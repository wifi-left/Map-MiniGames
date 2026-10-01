##
## 校验 storage minecraft:team_tmp probe.name：
## 必须是能取到首字符的字符串，且首字符不是 @（玩家名只允许字母数字下划线）
## 不合格就删掉 probe，让调用方跳过该玩家
##

execute if data storage minecraft:team_tmp probe.name run data modify storage minecraft:team_tmp probe.first set string storage minecraft:team_tmp probe.name 0 1
execute if data storage minecraft:team_tmp probe{first:"@"} run data remove storage minecraft:team_tmp probe
execute unless data storage minecraft:team_tmp probe.first run data remove storage minecraft:team_tmp probe
execute if data storage minecraft:team_tmp probe.first run data remove storage minecraft:team_tmp probe.first
