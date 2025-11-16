##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=deskgame] run function desk/russia/tips
# function minecraft:desk/russia/reset
execute in lobby as @a[team=deskgame,gamemode=!creative] run spreadplayers -18 21 0 6 under 3 false @s

scoreboard players set @a[team=deskgame,gamemode=adventure] order -1
scoreboard players set desk.russia.order order 0 
execute as @a[team=deskgame,gamemode=adventure] run function minecraft:desk/russia/give_order
execute as @a[team=deskgame,gamemode=adventure] run tag @s add no_health

execute as @a[team=deskgame,gamemode=adventure] run tellraw @s [{text:"你的游戏顺序为 [",color:gray},{score:{name:"@s",objective:order},color:gray},{text:"]",color:gray}]
scoreboard players set desk.time board 6
scoreboard players set desk.state state 2
scoreboard players set desk.russia.bullet board 3
# 重置人数统计
scoreboard players set wait.player tick 0
# 计算人数
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add wait.player tick 1
scoreboard players operation desk.russia.bullet board *= wait.player tick
execute as @a[team=deskgame,gamemode=adventure] run attribute @s max_health modifier add desk -14 add_value
tag @a remove desk.russia.lock