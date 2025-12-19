gamemode adventure @s
clear @s *[custom_data~{"build_guess":1}]
clear @s *[custom_data~{"build_guess":2}]
clear @s writable_book
clear @s written_book
tag @s add build_guess.guesser
tag @s remove build_guess.builder
tag @s remove build_guess.guesser.win
title @s title ["\u00a7b本次词汇长度：",{nbt:"build_guess.length",storage:"minecraft:temp",color:yellow}]
title @s subtitle ["\u00a76请使用物品栏中书与笔进行书写"]
tellraw @s ["\u00a76请使用物品栏中书与笔进行书写（无需署名）"]
tellraw @s ["\u00a7b本次词汇长度：",{nbt:"build_guess.length",storage:"minecraft:temp",color:yellow}]

execute in parkourworld run tp @s -129 -43 318 0 90