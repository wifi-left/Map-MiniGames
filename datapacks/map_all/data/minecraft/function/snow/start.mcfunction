##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

scoreboard players set play.snow.debug state 0
scoreboard players set snow.state state 1
team join play.snow @a[team=wait.snow,gamemode=adventure]
schedule clear minecraft:snow/final
title @a[team=play.snow] title ["\u00a7f\u00a7lSNOW"]
title @a[team=play.snow] subtitle ["\u00a7a游戏开始 !"]
tp @a[team=play.snow,gamemode=adventure] -48 31 -51
scoreboard players set snow.tntrun.start tick 6
execute if score snow.tntrun state matches 1.. run scoreboard players set snow.state state 2
# execute unless score snow.tntrun state matches 1..1 run schedule function minecraft:snow/final 80s
# execute unless score snow.tntrun state matches 1..1 run tellraw @a[team=play.snow] ["§a死亡决赛将在 §680 seconds§a后开始!"]
execute if score snow.tntrun state matches 1 run title @a[team=play.snow] title ["\u00a7a\u00a7lTNTRUN"]
execute if score snow.tntrun state matches 2 run title @a[team=play.snow] title ["\u00a7e\u00a7l混合模式（掘一死战 + TNTRUN）"]
execute if score snow.tntrun state matches 0 run title @a[team=play.snow] title ["\u00a7b\u00a7l掘一死战"]

tellraw @a[team=play.snow,tag=GOABLE.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[team=play.snow,tag=GOABLE.SPEC] at @s run gamemode spectator
schedule function minecraft:snow/reset 10t
schedule function minecraft:snow/start_ok 1s

