scoreboard players remove miner.time tick 1
execute if score miner.time tick matches 0 run return run function minecraft:miner/step/timeout/true_start
tellraw @a[team=miner] ["\u00a7e游戏将在 ",{score:{name:"miner.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=miner] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1