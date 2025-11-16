##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score desk.state state matches 1..99 if score desk.time board matches 1.. run scoreboard players remove desk.time board 1
execute if score desk.state state matches 1..99 if score desk.time board matches 1.. run title @a[team=deskgame] actionbar ["\u00a7b\u00a7l倒计时：",{score:{name:"desk.time",objective:board},color:yellow},"\u00a7es"]
execute if score desk.state state matches 1..99 if score desk.time board matches 1.. unless entity @a[tag=desk.russia.nowround] run scoreboard players set desk.time board 0
execute if score desk.state state matches 1..99 if score desk.time board matches 0 run function minecraft:desk/russia/timeout

# 重置人数统计
scoreboard players set desk.player tick 0
# 计算人数
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add desk.player tick 1
execute if score desk.state state matches 1..99 if score desk.player tick matches ..1 run function minecraft:desk/russia/over/one