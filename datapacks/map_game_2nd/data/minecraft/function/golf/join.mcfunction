##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join golf @s
tag @s remove golf.waittoplay
gamemode adventure @s[gamemode=spectator]
tellraw @a [{"selector":"@s"},"§a 加入了§d高尔夫游戏§a。"]
title @s title ["\u00a7dGOLF 高尔夫游戏"]
title @s subtitle ["\u00a7aShoot the \u00a7eBall \u00a7ainto the \u00a7bHole"]
tellraw @s ["\n§d§lGOLF 高尔夫游戏 §6| §a将 §e高尔夫球 §a射进 §b洞 §a中。\n"]
execute in minecraft:golfworld run tp @s -121 -60 115 90 0
playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score golf.state state matches 1.. run function minecraft:golf/spec
effect give @s instant_health 2 25 true
tag @s remove golf.waitshoot
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]

bossbar set minecraft:golf players @a[team=golf]
