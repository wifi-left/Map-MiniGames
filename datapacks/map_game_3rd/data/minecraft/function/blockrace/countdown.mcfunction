scoreboard players remove blockrace.time board 1
execute if score blockrace.time board matches 0 run return run function minecraft:blockrace/timeout

title @a[team=blockrace] actionbar ["\u00a7e倒计时：",{score:{name:"blockrace.time",objective:board},color:"red"},"\u00a7cs"]
execute if score blockrace.state state matches 2 as @a[team=blockrace] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2 0.5

execute if score blockrace.state state matches 3 if score blockrace.time board matches 30 run tellraw @a[team=blockrace] ["\n\u00a7e距离游戏结束还有",{score:{name:"blockrace.time",objective:board},color:"red"},"\u00a7e秒\n"]
execute if score blockrace.state state matches 3 if score blockrace.time board matches 30 as @a[team=blockrace] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1

execute if score blockrace.state state matches 3 run scoreboard players operation blockrace.temp temp = blockrace.time board
scoreboard players set 30 temp 30
execute if score blockrace.state state matches 3 run scoreboard players operation blockrace.temp temp %= 30 temp
execute if score blockrace.state state matches 3 if score blockrace.temp temp matches 0 run function minecraft:blockrace/show_rank

execute if score blockrace.state state matches 3 if score blockrace.time board matches 60 run tellraw @a[team=blockrace] ["\n\u00a7e距离游戏结束还有",{score:{name:"blockrace.time",objective:board},color:"red"},"\u00a7e秒\n"]
execute if score blockrace.state state matches 3 if score blockrace.time board matches 60 as @a[team=blockrace] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1


execute if score blockrace.state state matches 3 if score blockrace.time board matches 10 run tellraw @a[team=blockrace] ["\n\u00a7e距离游戏结束还有",{score:{name:"blockrace.time",objective:board},color:"red"},"\u00a7e秒\n"]
execute if score blockrace.state state matches 3 if score blockrace.time board matches 10 as @a[team=blockrace] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1