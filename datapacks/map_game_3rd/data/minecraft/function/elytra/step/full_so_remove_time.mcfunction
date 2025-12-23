execute if score elytra.time tick matches ..30 run return 0
scoreboard players set elytra.time tick 30
tellraw @a[team=elytra] ["\u00a7e游戏将在\u00a7c30s\u00a7e后结束。"]
execute as @a[team=elytra] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1