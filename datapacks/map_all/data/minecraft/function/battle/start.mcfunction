##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 分队走 battle/spr（组队优先），注意是整批一次分完，不要再按人循环调用
function minecraft:battle/spr
tellraw @a[team=wait.battle] ["§f§lBATTLE BOX§a 游戏开始。"]
execute as @a[team=wait.battle,gamemode=adventure] run function battle/spec_s
scoreboard players set battle.score.r board 0
scoreboard players set battle.score.b board 0

scoreboard players operation tmp board = wait.player tick
scoreboard players operation tmp1 board = wait.player tick
scoreboard players set 8 board 8
scoreboard players operation tmp board /= 8 board
scoreboard players operation tmp1 board %= 8 board
execute if score tmp1 board matches 1.. run scoreboard players add tmp board 1

scoreboard players operation battle.toolcount board = tmp board
kill @e[type=armor_stand,tag=battle.ranpotion]
scoreboard players set battle.state state 3

function battle/nextround