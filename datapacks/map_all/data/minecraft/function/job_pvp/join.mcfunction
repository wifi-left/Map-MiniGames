##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## 检测是否禁止启动
execute if score game.pvp board matches 0 run tellraw @s ["§c游戏已被管理员禁用。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score game.pvp board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score game.pvp board matches 0 run return 0

team join job_pvp @s
tellraw @a [{"selector":"@s"},"§7 已加入 §a职业战争§7!"]
tp @s -121 6 234 90 0
clear @s
effect clear @s
title @s title ["\u00a7a职业战争"]
title @s subtitle ["\u00a7r欢迎光临 ~"]
playsound entity.player.levelup player @s -62 30 176 1 1 1
team join wait.jobpvp @s
xp set @s 0 levels
xp set @s 0 points
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

# /give @p oak_sign{BlockEntityTag:{Textx4: '{"color":"gray","clickEvent":{"action":"run_command","value":""},"text":"点击选择"}', Textx3: "color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[scores={kill=30..}] run function minecraft:live/job/fisherman"},"text":"棒棒糖使者"}', Textx2: '{"color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @s[scores={kill=30..}] run function minecraft:job_pvp/start"},"text":"[30 Kills]"}', Textx1: '{"color":"aqua","clickEvent":{"action":"run_command","value":""},"text":"职业战争"}'}}

# /summon armor_stand ~ ~ ~ {NoAI:1b,DisabledSlots:2039583,Invulnerable:false,Invisible:1b,Tags:["pvp.job.display"]}

