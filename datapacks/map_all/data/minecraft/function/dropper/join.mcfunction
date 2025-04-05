##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in dropperworld run teleport @s 19 -59 57 180 0
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
title @s title ["\u00a7a\u00a7lDropper"]
title @s subtitle ["\u00a7b星跳水立方"]
tellraw @s ["\n   §d ★ §b星跳水立方\n\n§a    想办法从平台顶端到达平台底端！并且寻找传送门进入下一关。\n"]
tellraw @a ["§b[Game] ",{"selector":"@s"},"§d 加入了§a星跳水立方§d游戏。"]
team join dropper
clear @s

tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

