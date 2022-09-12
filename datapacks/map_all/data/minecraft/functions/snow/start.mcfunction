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
execute if score snow.tntrun state matches 0 run title @a[team=play.snow] title ["\u00a7a\u00a7lTNTRUN"]
execute unless score snow.tntrun state matches 1..1 run title @a[team=play.snow] title ["\u00a7e\u00a7l掘一死战"]
execute unless score snow.tntrun state matches 2.. run title @a[team=play.snow] title ["\u00a7b\u00a7l混合模式"]
function fix:snow/start