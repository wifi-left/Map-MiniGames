##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set repel state 1
scoreboard players set cnt.repel number 1
scoreboard players set start.repel.second tick 30
execute as @a[team=wait.repel,gamemode=adventure] run spreadplayers -93 62 0 20 under 42 false @s

team join play.repel @a[team=wait.repel,gamemode=adventure]
tellraw @a ["§b§l[GAMESTART] §eRepeling War§a 开始了！"]
title @a[team=play.repel] title ["\u00a7e\u00a7lRepeling War"]
team modify play.repel friendlyFire false
title @a[team=play.repel] subtitle ["\u00a7r将其他玩家击退下去！"]
tellraw @a[team=play.repel] ["§c你将在§610 s§c后获得武器。"]
tellraw @a[team=play.repel] ["\n§6提示：如果您使用投影MOD，建议在设置中更换绑定物品，避免导致无法游戏。\n"]
schedule function minecraft:repel/givethings 10s

tellraw @a[tag=GLOBAL.SPEC,team=play.repel] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[tag=GLOBAL.SPEC,team=play.repel] at @s run gamemode spectator

