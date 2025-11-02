scoreboard players remove pillar.time tick 1
execute if score pillar.time tick matches 0 run return run function minecraft:pillar/step/timeout/true_start
tellraw @a[team=pillar] ["\u00a7e游戏将在 ",{score:{name:"pillar.time",objective:"tick"},color:red},"\u00a7cs \u00a7e后开始。"]
execute as @a[team=pillar] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1