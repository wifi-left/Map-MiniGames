scoreboard players remove mining.time tick 1
execute if score mining.time tick matches 0 run return run function minecraft:mining/step/timeout/true_start
tellraw @a[team=mining] ["\u00a7e游戏将在 ",{score:{name:"mining.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=mining] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1