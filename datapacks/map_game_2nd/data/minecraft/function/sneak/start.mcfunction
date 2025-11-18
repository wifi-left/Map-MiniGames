##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

scoreboard players set sneak.state state 1
schedule clear minecraft:sneak/reset
schedule clear minecraft:sneak/start_ok
title @a[team=sneak] title ["\u00a7a\u00a7lSNEAK 贪吃蛇游戏"]
title @a[team=sneak] subtitle ["游戏开始"]
tp @a[team=sneak,gamemode=adventure] -152 18 -6 0 0
scoreboard players set sneak.time tick 6
scoreboard players set sneak.state state 2

tellraw @a[team=sneak,tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[team=sneak,tag=GLOBAL.SPEC] at @s run gamemode spectator
forceload add -118 -40 -186 28
schedule function minecraft:sneak/start_reset 10t
tellraw @a[team=sneak] ["\n\u00a7a\u00a7l SNEAK 贪吃蛇\n\u00a76\u00a7l 游戏规则\n\u00a7b 游戏开始后，请保持奔跑。你脚下的方块将会同化成你的尾巴！\n 请注意不要踩到自己和他人尾巴了！\n"]
scoreboard players reset * sneak.color
execute as @a[team=sneak,gamemode=adventure] run function minecraft:sneak/random_color
# LRS_CS