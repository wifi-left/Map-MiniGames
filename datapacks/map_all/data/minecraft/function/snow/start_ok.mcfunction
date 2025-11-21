execute as @a[team=play.snow,gamemode=adventure] run spreadplayers -22 -74 0 20 under 26 false @s
execute unless score snow.tntrun board matches 1..1 run schedule function minecraft:snow/final 80s replace
execute unless score snow.tntrun board matches 1 run tellraw @a[team=play.snow] ["§a死亡决赛将在 §680s §a后开始!"]

title @a[team=play.snow] title ["\u00a76游戏开始！"]
execute if score snow.tntrun board matches 1 run title @a[team=play.snow] subtitle ["\u00a7a\u00a7lTNTRUN模式"]
execute if score snow.tntrun board matches 2 run title @a[team=play.snow] subtitle ["\u00a7e\u00a7l混合模式（掘一死战 + TNTRUN）"]
execute if score snow.tntrun board matches 0 run title @a[team=play.snow] subtitle ["\u00a7b\u00a7l掘一死战模式"]
execute if score snow.tntrun board matches 3 run title @a[team=play.snow] subtitle ["\u00a7c\u00a7l爆炸弓模式模式"]

scoreboard players set snow.tntrun.start tick 6

execute if score snow.tntrun board matches 1..2 run scoreboard players set snow.state state 2
execute unless score snow.tntrun board matches 1..2 run scoreboard players set snow.state state 1
