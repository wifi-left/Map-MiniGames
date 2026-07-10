scoreboard players set t_says.round board 0
scoreboard players set t_says.state state 4

title @a[team=t_says] title [{"text":"不要相信T氏的话","color":"light_purple","bold": true}]
title @a[team=t_says] subtitle ["\u00a7e游戏将在§c5§e秒后开始 !"]
tellraw @a[team=t_says] ["\n§6    游戏将在§e5§6秒后开始！ ","\n"]

schedule clear minecraft:t_says/summon
# schedule function minecraft:t_says/summon 5s replace

item replace entity @a[team=t_says,gamemode=adventure] inventory.26 with sunflower[max_stack_size=99,item_name="金币",custom_data={"douzi":1}] 1

tellraw @a[team=t_says] ["\n\u00a7d\u00a7l不要相信T氏的话\n\n\u00a7b请按照游戏要求进行行动：\n\n\u00a7b若命令开头\u00a7e\u00a7l有\u00a7a“T氏说”\u00a7b，请\u00a7e\u00a7l反方向执行\u00a7b这条规则。\n\u00a7b若命令开头\u00a7e\u00a7l没有\u00a7a“T氏说”\u00a7b，请\u00a7e\u00a7l执行\u00a7b这条规则！"]

xp set @a[team=t_says] 0 levels
xp set @a[team=t_says] 0 points

function minecraft:t_says/reset
function minecraft:t_says/next_round
