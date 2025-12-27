##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 6 10 -49 38 10 -81 minecraft:white_wool
# /
title @a[team=live] title [{"text":"追杀游戏","color":"#5ed3ff","bold": true}]
title @a[team=live] subtitle ["\u00a7e游戏将在§c5§e秒后开始 !"]
tellraw @a[team=live] ["\n§6    游戏将在§e5§6秒后开始！ ","\n"]
schedule clear minecraft:live/summon
# schedule function minecraft:live/summon 5s replace
tag @a remove live.nokiller
tag @a[team=live,gamemode=adventure] add live.nokiller
item replace entity @a[team=live,gamemode=adventure] inventory.26 with sunflower[max_stack_size=99,item_name="金币",custom_data={"douzi":1}] 1

tellraw @a[team=live] ["\n\u00a7a\u00a7l LIVE LONGEST 追杀游戏\n\u00a76\u00a7l 游戏规则\n\u00a7b 逃跑！不要被追杀者抓到！\n"]
scoreboard players set live.state state 2
function minecraft:live/next_round
xp set @a[team=live] 0 levels
xp set @a[team=live] 0 points

fill 222 -61 229 191 -37 260 air replace minecraft:heavy_weighted_pressure_plate
