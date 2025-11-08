##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader

## 燎原烽火 / Blaze Fields
# 思路： “燎原烽火”描绘战火蔓延的激烈场景。英文“Blaze”指烈火，“Fields”指原野/场地，组合起来形象且有冲击力。
# title @s title ["\u00a7c暂未完成"]
# title @s subtitle ["尽情期待！"]
# tellraw @s ["\n\u00a7e游戏仍在制作中，尽情期待！\n"]
# return fail
team join blaze.wait @s
gamemode adventure @s[gamemode=spectator]
tellraw @a [{"selector":"@s"},"§a 加入了§c燎原烽火§a。"]
title @s title ["\u00a7d燎原烽火"]
title @s subtitle ["Blaze Fields"]
tellraw @s ["\n§d§lBlaze Fields §6| §a团队战争游戏。\n"]
execute in killerworld run tp @s 61 80 369 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score blaze.state state matches 1.. in killerworld run function minecraft:blaze/spec
effect give @s instant_health 2 25 true

tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
effect give @s regeneration 2 25 true
