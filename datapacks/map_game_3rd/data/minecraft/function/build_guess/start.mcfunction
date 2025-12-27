##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 6 10 -49 38 10 -81 minecraft:white_wool
# /
title @a[team=build_guess] title [{"text":"建筑猜猜乐","color":"#5ed3ff","bold": true}]
title @a[team=build_guess] subtitle ["\u00a7e游戏将在§c3§e秒后开始 !"]
tellraw @a[team=build_guess] ["\n§6    游戏将在§e3§6秒后开始！ ","\n"]
schedule clear minecraft:build_guess/summon
# schedule function minecraft:build_guess/summon 5s replace
tag @a remove build_guess.nokiller
tag @a remove build_guess.guesser
tag @a remove build_guess.builder

scoreboard players set wait.player tick 0
execute as @a[team=build_guess,gamemode=adventure] run scoreboard players add wait.player tick 1

execute if score total.start_game_mode board matches 1 if score wait.player tick matches 6.. run tellraw @a[team=build_guess] ["\n\u00a7c由于人数过多，故只有部分玩家能够建造。"]

item replace entity @a[team=build_guess] inventory.26 with sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"build_guess":3}] 1

execute if score total.start_game_mode board matches 1 run tag @a[team=build_guess,gamemode=adventure,limit=5,sort=random] add build_guess.nokiller
execute if score total.start_game_mode board matches 1 if score wait.player tick matches 6.. run tellraw @a[team=build_guess] ["\u00a7c他们是：",{selector:"@a[tag=build_guess.nokiller]"},"\n"]

execute unless score total.start_game_mode board matches 1 run tag @a[team=build_guess,gamemode=adventure] add build_guess.nokiller


tellraw @a[team=build_guess] ["\n\u00a7a\u00a7l 建筑猜猜乐\n\u00a76\u00a7l 游戏规则\n\u00a7b 建造一个建筑，让你的同伴能够猜出来！\n"]
scoreboard players set build_guess.state state 2
function minecraft:build_guess/next_round
xp set @a[team=build_guess] 0 levels
xp set @a[team=build_guess] 0 points