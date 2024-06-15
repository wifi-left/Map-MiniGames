##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in lobby run tp @s 35 7 43 -90 0
tellraw @s ["\n\u00a7e该类游戏还在公开测试阶段！\n如发现BUG，最好请录制一个视频，然后向作者反馈。\n\u00a77从4000年前古埃及的塞尼特棋直至40,000年的茫茫星海，演绎于一桌之上!\n"]
title @s title [{"text":"桌游","color":"#0099CC","bold": true}]
title @s subtitle ["\u00a77Good Luck and Have Fun!"]
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1

team join deskgame

tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

execute if score desk.state state matches 1.. run function minecraft:desk/spec
# summon minecraft:text_display 39 8 43 {alignment:"center",billboard:"fixed",text:'[{"text":"桌游大厅","color":"#0099CC","bold": true},"\\n\\u00a77前方前往"]'}
clear @s
effect clear @s
