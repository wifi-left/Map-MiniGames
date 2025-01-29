

scoreboard players set endless.player tick 0
execute as @a[team=play.endwolf,gamemode=adventure] run scoreboard players add endless.player tick 1
scoreboard players set endless.vampire tick 0
execute as @a[team=play.endwolf,tag=endless.vampire,gamemode=adventure] run scoreboard players add endless.vampire tick 1
scoreboard players set endless.survive tick 0
execute as @a[team=play.endwolf,tag=!endless.vampire,gamemode=adventure] run scoreboard players add endless.survive tick 1
execute if score endwolf.state state matches 1..4 if score endless.survive tick matches ..0 if score endless.vampire tick matches 1.. run function minecraft:endless_wolf/over/vampire
execute if score endwolf.state state matches 1..4 if score endless.survive tick matches 1.. if score endless.vampire tick matches ..0 run function minecraft:endless_wolf/over/normal
execute if score endwolf.state state matches 1..4 if score endless.player tick matches ..1 run function minecraft:endless_wolf/over/unexpected

execute if score endwolf.state state matches 1..4 if score endwolf.time board matches 1.. run scoreboard players remove endwolf.time board 1
execute if score endwolf.state state matches 1..4 if score endwolf.time board matches 0 run function minecraft:endless_wolf/timeout

execute if score endwolf.state state matches 1 if score endwolf.time board matches 1.. run title @a[team=play.endwolf] actionbar ["\u00a76现在是\u00a7f\u00a7l白天\u00a76，距离天黑还剩下 ",{"score":{"name": "endwolf.time","objective": "board"},"color":"yellow"},"\u00a7es\u00a76"]
execute if score endwolf.state state matches 2 if score endwolf.time board matches 1.. run title @a[team=play.endwolf] actionbar ["\u00a76现在是\u00a7c\u00a7l夜晚\u00a76，距离天亮还剩下 ",{"score":{"name": "endwolf.time","objective": "board"},"color":"yellow"},"\u00a7es\u00a76"]