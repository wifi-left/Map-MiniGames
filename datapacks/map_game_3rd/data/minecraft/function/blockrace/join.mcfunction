##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 组队统一 API：多人游戏“仅队长可进入 + 队长进入时自动把队员一起拉进来”
# （单人游戏、或不想受这个限制的游戏，请把下面两行删掉）
recipe take @s *
execute store result score tmp.team.canjoin board run function minecraft:team/api/can_join {game:"blockrace",join:"function blockrace/join",pull:1b}
execute if score tmp.team.canjoin board matches 0 run return 0
tag @s remove blockrace.win
team join blockrace @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了",{bold:true,color:"#11ffaf",text:"方块竞速"}]
title @s title [{bold:true,color:"#11ffaf",text:"方块竞速"}]
title @s subtitle ["穿越重重障碍，抵达终点！"]
tellraw @s ["\n ",{bold:true,color:"#11ffaf",text:"方块竞速"},"\u00a76：收集方块，制作工具，穿越一道道障碍，然后抵达终点！\n"]
execute in minecraft:airworld run tp @s 147 -35 219 180 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score blockrace.state state matches 1.. run function minecraft:blockrace/spec
function player:full_health
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
