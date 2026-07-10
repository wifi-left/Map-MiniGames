function minecraft:build_parkour/reset
gamemode spectator @a[gamemode=adventure,team=build_parkour]
tellraw @a[team=build_parkour] ["\n\u00a76本轮结束。\n"]
title @a[team=build_parkour] title ["\u00a76本轮结束"]
title @a[team=build_parkour] subtitle ["\u00a7e下一轮将在\u00a7c3秒\u00a7e后开始！"]
execute if score build_parkour.any_success board matches 1.. run give @a[tag=build_parkour.builder] sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"build_parkour":2}] 1
execute if score build_parkour.any_success board matches 1.. run tellraw @a[tag=build_parkour.builder] ["\u00a7e金币 +1（有人没通过你的跑酷）"]
clear @a[team=build_parkour] *[custom_data~{"build_parkour":1}]
function minecraft:build_parkour/next_round