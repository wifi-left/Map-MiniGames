scoreboard players remove random_parkour.time tick 1
execute if score random_parkour.time tick matches 0 run return run function minecraft:random_parkour/step/timeout/true_start
tellraw @a[team=random_parkour] ["\u00a7e游戏将在 ",{score:{name:"random_parkour.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=random_parkour] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1