function minecraft:build_guess/reset
data modify storage minecraft:temp build_guess.tip set value "本轮结束，等待下一轮"
gamemode spectator @a[gamemode=adventure,team=build_guess]
tellraw @a[team=build_guess] ["\n\u00a76本轮结束。\n"]
title @a[team=build_guess] title ["\u00a76本轮结束"]
title @a[team=build_guess] subtitle ["\u00a7b请稍作等待"]
execute if score build_guess.any_success board matches 1.. run give @a[tag=build_guess.builder] sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"build_guess":3}] 3
execute if score build_guess.any_success board matches 1.. run tellraw @a[tag=build_guess.builder] ["\u00a7e金币 +3（有人猜出来了）"]
execute unless score build_guess.any_success board matches 1.. run tellraw @a[tag=build_guess.builder] ["\u00a7c没有人猜出建筑。"]
clear @a[team=build_guess] *[custom_data~{"build_guess":1}]
clear @a[team=build_guess] *[custom_data~{"build_guess":2}]
function minecraft:build_guess/next_round