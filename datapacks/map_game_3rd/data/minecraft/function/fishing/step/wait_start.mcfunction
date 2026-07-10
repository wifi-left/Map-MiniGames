scoreboard players remove fishing.time tick 1
execute if score fishing.time tick matches 0 run return run function minecraft:fishing/step/timeout/true_start
tellraw @a[team=fishing] ["\u00a7e游戏将在 ",{score:{name:"fishing.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=fishing] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1