##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 中文：商贾传奇 英文：Merchant Legend
# 分配ID
# SCORE: ingameid
execute if score gametotal state matches 1.. run tellraw @s ["\u00a7c无法在小游戏派对开始时启动此游戏：它们是冲突的。"]
execute if score gametotal state matches 1.. run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
execute if score gametotal state matches 1.. run return fail

scoreboard players add globle globle.game 1
scoreboard players operation game.merchant globle.game = globle globle.game
scoreboard players operation @a[team=deskgame] globle.game = game.merchant globle.game

scoreboard players reset * merchant.coin
scoreboard objectives setdisplay sidebar.team.dark_purple merchant.coin
tag @a[team=deskgame] add merchant.player


scoreboard players set merchant.target board 4000

# 重置人数统计
scoreboard players set desk.player tick 0
# 计算人数
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add desk.player tick 1
execute if score desk.player tick matches 5.. run scoreboard players set merchant.target board 3000

execute as @a[team=deskgame] run function minecraft:merchant/tips


scoreboard players reset @a[team=deskgame] park.x
scoreboard players reset @a[team=deskgame] park.y
scoreboard players reset @a[team=deskgame] park.z
tag @a[team=deskgame,gamemode=adventure] add merchant.alive
scoreboard players set @a[team=deskgame,gamemode=adventure] order -1
scoreboard players set desk.merchant.order order 0
execute as @a[team=deskgame,gamemode=adventure] run function minecraft:merchant/give_order

scoreboard players set @a[team=deskgame,gamemode=adventure] merchant.coin 1500

execute as @a[team=deskgame,gamemode=adventure] run tellraw @s ["\u00a77你的游戏顺序是 [",{score:{name:"@s",objective:"order"},color:aqua},"\u00a77]"]
execute as @a[team=deskgame,gamemode=adventure] run gamemode spectator
scoreboard players set desk.state state 1
scoreboard players set desk.time board 6
function minecraft:small_games/total/reset
execute in lobby run tp @a[tag=merchant.player] 60 50 -65 0 90