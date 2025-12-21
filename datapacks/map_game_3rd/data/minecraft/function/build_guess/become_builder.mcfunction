gamemode adventure @s
tag @s remove build_guess.nokiller
tag @s remove build_guess.guesser
clear @s writable_book
clear @s written_book
clear @s *[custom_data~{"build_guess":1}]
clear @s *[custom_data~{"build_guess":2}]

tellraw @a[team=build_guess] ["\n\n\u00a7b轮到 ",{selector:"@s"},"\u00a7b 建造建筑了。"]
execute in parkourworld run tp @s -129 -63 318 0 0

tellraw @a[team=build_guess,tag=build_guess.builder,gamemode=adventure] ["\u00a7a你有",{score:{objective:board,name:"build_guess.time"},color:gold},"\u00a76s \u00a7a的时间进行建造。\n\u00a7b你需要建造的词汇：",{nbt:"build_guess.word",storage:"minecraft:temp",color:yellow}]

tellraw @s ["\u00a76该你建造了。\n\u00a7a提示：你需要建造一个其他人能猜出来的建筑才能得分。\n\u00a7b如果实在太难，请不要为难自己，您可以使用文字、语音进行提示，\u00a7e\u00a7l但请不要使用原文\u00a7b，以保障游戏体验。"]
title @s title [{nbt:"build_guess.word",storage:"minecraft:temp",color:yellow}]
title @s subtitle ["\u00a7b你需要在",{score:{objective:board,name:"build_guess.time"},color:gold},"\u00a76s\u00a7b内让其他人猜出你的词汇"]
tag @s add build_guess.builder