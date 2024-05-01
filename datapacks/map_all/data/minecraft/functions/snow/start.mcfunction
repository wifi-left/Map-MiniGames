##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:snow/reset
scoreboard players set play.snow.debug state 0
scoreboard players set snow.state state 1
execute as @a[team=wait.snow,gamemode=adventure] run spreadplayers -22 -74 0 20 under 26 false @s
team join play.snow @a[team=wait.snow,gamemode=adventure]
schedule clear minecraft:snow/final
title @a[team=play.snow] title ["\u00a7f\u00a7lSNOW"]
title @a[team=play.snow] subtitle ["\u00a7a游戏开始 !"]

scoreboard players set snow.tntrun.start tick 6
execute if score snow.tntrun state matches 1.. run scoreboard players set snow.state state 2
execute unless score snow.tntrun state matches 1..1 run schedule function minecraft:snow/final 80s
execute unless score snow.tntrun state matches 1..1 run tellraw @a[team=play.snow] ["\u00a7a死亡决赛将在 \u00a7680 seconds\u00a7a后开始!"]
execute if score snow.tntrun state matches 1 run title @a[team=play.snow] title ["\u00a7a\u00a7lTNTRUN"]
execute if score snow.tntrun state matches 2 run title @a[team=play.snow] title ["\u00a7e\u00a7l混合模式（掘一死战 + TNTRUN）"]
execute if score snow.tntrun state matches 0 run title @a[team=play.snow] title ["\u00a7b\u00a7l掘一死战"]

tellraw @a[team=play.snow,tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[team=play.snow,tag=GOABLE.SPEC] at @s run gamemode spectator
function fix:snow/start
