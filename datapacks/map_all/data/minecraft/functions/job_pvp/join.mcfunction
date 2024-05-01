##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join job_pvp @s
tellraw @a [{"selector":"@s"},"\u00a77 已加入 \u00a7a职业战争\u00a77!"]
tp @s -121 6 234 90 0
clear @s
effect clear @s
title @s title ["\u00a7a职业战争"]
title @s subtitle ["\u00a7r欢迎光临 ~"]
playsound entity.player.levelup player @s -62 30 176 1 1 1
team join wait.jobpvp @s
xp set @s 0 levels
xp set @s 0 points
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

# /give @p oak_sign{BlockEntityTag:{Textx4: '{"color":"gray","clickEvent":{"action":"run_command","value":""},"text":"点击选择"}', Textx3: '{"color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[scores={kill=30..}] run function minecraft:live/job/fisherman"},"text":"棒棒糖使者"}', Textx2: '{"color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @s[scores={kill=30..}] run function minecraft:job_pvp/start"},"text":"[30 Kills]"}', Textx1: '{"color":"aqua","clickEvent":{"action":"run_command","value":""},"text":"职业战争"}'}}

# /summon armor_stand ~ ~ ~ {NoAI:1b,DisabledSlots:2039583,Invulnerable:false,Invisible:1b,Tags:["pvp.job.display"]}
