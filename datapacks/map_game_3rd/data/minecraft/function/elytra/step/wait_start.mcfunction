scoreboard players remove elytra.time tick 1
execute if score elytra.time tick matches 0 run return run function minecraft:elytra/step/timeout/true_start
tellraw @a[team=elytra] ["\u00a7e游戏将在 ",{score:{name:"elytra.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=elytra] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1

fill 98 99 347 98 103 357 minecraft:barrier
