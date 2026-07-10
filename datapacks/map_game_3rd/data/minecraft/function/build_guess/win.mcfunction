##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add build_guess.any_success board 1
tellraw @s ["§a你猜对了！"]
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a[team=build_guess] [{"selector":"@s"},"§a 猜对了！"]
gamemode spectator @s

scoreboard players set build_guess.win_player tick 0
execute as @a[team=build_guess,tag=!GLOBAL.SPEC,tag=build_guess.guesser.win,gamemode=spectator] run scoreboard players add build_guess.win_player tick 1
execute if score build_guess.win_player tick matches ..0 run give @s sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"build_guess":3}] 3
execute if score build_guess.win_player tick matches ..0 run tellraw @s ["\u00a7e金币 +3（猜对了）"]

execute if score build_guess.win_player tick matches 1 run give @s sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"build_guess":3}] 2
execute if score build_guess.win_player tick matches 1 run tellraw @s ["\u00a7e金币 +2（猜对了）"]


execute if score build_guess.win_player tick matches 2.. run give @s sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"build_guess":3}] 1
execute if score build_guess.win_player tick matches 2.. run tellraw @s ["\u00a7e金币 +1（猜对了）"]

execute if score build_guess.win_player tick matches 3.. if score build_guess.time board matches 31.. run scoreboard players set build_guess.time board 30

tag @s add build_guess.guesser.win

title @s title ["\u00a7a你猜对了"]
title @s subtitle ["\u00a7d请等待其他玩家成功猜测或时间截止"]