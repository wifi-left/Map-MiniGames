scoreboard players remove finder.time tick 1
execute if score finder.time tick matches 0 run return run function minecraft:finder/step/timeout/true_start
tellraw @a[team=finder] ["\u00a7e游戏将在 ",{score:{name:"finder.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=finder] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1