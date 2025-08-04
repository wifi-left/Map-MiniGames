##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=wait.endwolf] at @s run function minecraft:endless_wolf/tips
# endless.item
function minecraft:endless_wolf/reset
# 切换队伍

tag @a remove endless.vampire
team join play.endwolf @a[team=wait.endwolf,gamemode=adventure]
# 统计人数

scoreboard players set play.player tick 0
execute as @a[team=play.endwolf,gamemode=adventure] run scoreboard players add play.player tick 1

# 分配 VAMPIRE
execute as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire
execute if score play.player tick matches 6.. as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire
execute if score play.player tick matches 12.. as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire
execute if score play.player tick matches 18.. as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire
execute if score play.player tick matches 24.. as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire
execute if score play.player tick matches 30.. as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire
execute if score play.player tick matches 36.. as @a[team=play.endwolf,tag=!endless.vampire,limit=1,gamemode=adventure,sort=random] at @s run function minecraft:endless_wolf/job/vampire

execute as @a[team=play.endwolf,tag=!endless.vampire] at @s run function minecraft:endless_wolf/job/normal
scoreboard players set endwolf.state state 1

team modify play.endwolf friendlyFire false
# 剩余 白天/晚上 交替数量
scoreboard players operation endwolf.round board = endwolf.round state
# scoreboard players operation endwolf.time board = endwolf.day state
function minecraft:endless_wolf/time/day
title @a[team=play.endwolf] title ["\u00a76游戏开始"]
title @a[team=play.endwolf] subtitle ["\u00a7a在第一天晚上PVP就会开始啦~"]

# execute as @a[team=play.endwolf] at @s run tp @s @e[limit=1,sort=random,tag=endless.tppoint]
execute as @a[team=play.endwolf] at @s run function minecraft:endless_wolf/random_tp
execute as @a[team=play.endwolf,tag=endless.vampire] at @s run function minecraft:endless_wolf/vampire_item

