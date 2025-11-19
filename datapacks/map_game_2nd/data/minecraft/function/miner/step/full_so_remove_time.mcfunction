execute if score miner.time tick matches ..30 run return 0
scoreboard players set miner.time tick 30
tellraw @a[team=miner] ["\u00a7e游戏将在\u00a7c30s\u00a7e后结束。"]
execute as @a[team=miner] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1