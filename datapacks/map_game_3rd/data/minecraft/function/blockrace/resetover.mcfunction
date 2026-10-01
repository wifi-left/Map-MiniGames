
title @a[team=blockrace] title {bold:true,color:"#11ffaf",text:"方块竞速"}
title @a[team=blockrace] subtitle {text:"游戏即将开始！"}

tellraw @s ["\n ",{bold:true,color:"#11ffaf",text:"方块竞速"},{text:"：",color:gold},{text:"收集方块，制作工具，穿越一道道障碍，然后抵达终点！",color:white},"\n"]
gamemode adventure @a[gamemode=spectator,team=blockrace,tag=!GLOBAL.SPEC]

execute in minecraft:airworld run tp @a[gamemode=spectator,team=blockrace] 265 0 203 0 90
execute in minecraft:airworld as @a[gamemode=adventure,team=blockrace] run function minecraft:blockrace/startpoint

execute as @a[gamemode=adventure,team=blockrace] run function player:full_health

# 开始逻辑
gamemode adventure @a[gamemode=adventure,team=blockrace]
scoreboard players set blockrace.state state 2
scoreboard players set blockrace.time board 6