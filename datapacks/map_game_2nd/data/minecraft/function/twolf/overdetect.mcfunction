##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 主入口：当游戏未结束时执行所有检查

# ===== 全局情况检查 =====
# 单人存活特殊判定
execute unless score twolf.state state matches 3 if score wolf.r.all board matches 1 if score wolf.r.good board matches 1.. run function minecraft:twolf/over/good
execute unless score twolf.state state matches 3 if score wolf.r.all board matches 1 if score wolf.r.bad board matches 1.. run function minecraft:twolf/over/bad
execute unless score twolf.state state matches 3 if score wolf.r.all board matches 1 if score wolf.r.cupids board matches 1.. run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.r.all board matches ..1 run function minecraft:twolf/over/unexpected

# ===== 通用胜利条件 =====
# 无连接时的好人胜利
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 0..1 if score wolf.r.bad board matches ..0 unless score wolf.r.tnt board matches 1.. run function minecraft:twolf/over/good
# 无连接时的坏人胜利
execute unless score twolf.state state matches 3 if score wolf.cupid.type board matches 0..1 if score wolf.r.good board matches ..0 unless score wolf.r.tnt board matches 1.. run function minecraft:twolf/over/bad

# ===== 屠城模式 =====
# 基础胜利条件
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 unless score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 run function minecraft:twolf/over/good
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.r.good board matches ..0 run function minecraft:twolf/over/bad
# 炸弹人逻辑
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 run function minecraft:twolf/over/boom
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.r.tnt board matches 1.. if score wolf.r.good board matches ..0 run function minecraft:twolf/over/bad
# 特殊丘比特
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.cupid.type board matches 2 if score wolf.r.cupids board matches 1.. unless score wolf.r.good board matches 1.. unless score wolf.r.bad board matches 1.. run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.mode board matches 2 if score wolf.cupid.type board matches 2 if score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/boom

# ===== 屠边模式 =====
# 基础胜利条件
execute unless score twolf.state state matches 3 if score wolf.mode board matches 1 unless score wolf.r.tnt board matches 1.. if score wolf.r.person board matches ..0 run function minecraft:twolf/over/bad
execute unless score twolf.state state matches 3 if score wolf.mode board matches 1 unless score wolf.r.tnt board matches 1.. if score wolf.r.god board matches ..0 run function minecraft:twolf/over/bad
# 炸弹人逻辑
execute unless score twolf.state state matches 3 if score wolf.mode board matches 1 if score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 run function minecraft:twolf/over/boom
# 特殊丘比特
execute unless score twolf.state state matches 3 if score wolf.mode board matches 1 if score wolf.cupid.type board matches 2 if score wolf.r.cupids board matches 1.. if score wolf.r.person board matches ..0 run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.mode board matches 1 if score wolf.cupid.type board matches 2 if score wolf.r.cupids board matches 1.. if score wolf.r.god board matches ..0 run function minecraft:twolf/over/cupid
execute unless score twolf.state state matches 3 if score wolf.mode board matches 1 if score wolf.cupid.type board matches 2 if score wolf.r.tnt board matches 1.. if score wolf.r.bad board matches ..0 if score wolf.r.cupids board matches ..0 run function minecraft:twolf/over/boom
