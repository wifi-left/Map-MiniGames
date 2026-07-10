scoreboard players remove mutouren.time tick 1
execute if score mutouren.time tick matches 0 run return run function minecraft:mutouren/step/timeout/true_start
tellraw @a[team=mutouren] ["\u00a7e游戏将在 ",{score:{name:"mutouren.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=mutouren] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute in parkourworld run fill -4 -53 423 -4 -55 419 minecraft:oak_fence