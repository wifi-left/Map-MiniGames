##
## 快速加入：按游戏ID执行注册好的加入命令（宏）
## 参数：id
##
execute if score @s quickplay matches 1.. run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
$execute if data storage minecraft:quickplay joins."$(id)" run function cmd:run_cmd with storage minecraft:quickplay joins."$(id)"
$execute unless data storage minecraft:quickplay joins."$(id)" run tellraw @s ["§c很抱歉，未知游戏的ID！"]
