##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @s ["\n\u00a7c因为有致命BUG，本游戏将进行重构。预计在1年后\u00a7m\u00a7n不一定\u00a7c恢复。\n"]
# advancement grant @s only minecraft:games/remaking_game
# return 0
team join boat @s
title @s reset
tellraw @a [{"selector":"@s"},"§a 加入了§9竞速游戏§a。"]
title @s title ["\u00a79竞速游戏"]
title @s subtitle ["\u00a7bIce Boat Game"]
tellraw @s ["§9§l竞速游戏\n\n§6§l   Idea from: §b§lDomnick_JYH §a&§b wifi_left\n"]
# execute in minecraft:boatworld run tp @s -142 -56 -42 180 0
execute in minecraft:boatworld2 run tp @s -12 146 -43 0 0
playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score boat.state state matches 1.. run function minecraft:boat/spec
effect give @s instant_health 2 25 true

execute if score boat.state state matches 1.. run function boat/spec
xp set @s 0 levels
xp set @s 0 points
tellraw @s[tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator

