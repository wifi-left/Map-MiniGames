##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 组队统一 API：多人游戏“仅队长可进入 + 队长进入时自动把队员一起拉进来”
# （单人游戏、或不想受这个限制的游戏，请把下面两行删掉）
execute store result score tmp.team.canjoin board run function minecraft:team/api/can_join {game:"firstoutwins",join:"function firstoutwins/join",pull:1b}
execute if score tmp.team.canjoin board matches 0 run return 0

team join firstoutwins @s
gamemode adventure @s[gamemode=spectator]
tellraw @a [{"selector":"@s"}," \u00a7a加入了",{bold:true,color:"#A8C3A6",text:"谢幕者胜"}]
title @s title [{bold:true,color:"#A8C3A6",text:"谢幕者胜"}]
title @s subtitle ["第一个谢幕的玩家获胜"]
tellraw @s ["\n ",{bold:true,color:"#A8C3A6",text:"谢幕者胜"},"\u00a76：利用场上道具，第一个死亡的玩家取得胜利！\n"]
execute in airworld run tp @s 202 -35 94 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
tag @s remove firstoutwins.win
effect clear @s
execute if score firstoutwins.state state matches 1.. run function minecraft:firstoutwins/spec
function player:full_health
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
