# 中文：商贾传奇 英文：Merchant Legend
execute if score desk.time board matches 1.. if score desk.state state matches 1 run function minecraft:merchant/steps/before_start
execute if score desk.state state matches 2 if score desk.time board matches 1.. run function minecraft:merchant/steps/general
execute if score desk.state state matches 4 if score desk.time board matches 1.. run function minecraft:merchant/steps/general

execute if score desk.state state matches 7 if score desk.time board matches 1.. run function minecraft:merchant/steps/during_wait

# STATE:5 小游戏 playing
function minecraft:merchant/during/testfor_over