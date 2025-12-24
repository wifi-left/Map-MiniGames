
execute as @a[team=build_parkour,gamemode=adventure] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a[team=build_parkour] ["\u00a7c请注意：建造者已超时！现在建造者有15s的时间放置终点。"]
tellraw @a[team=build_parkour,gamemode=adventure] ["\n\u00a7e\u00a7l请注意：\u00a7f你的建造已超时！你现在有15s的时间放置终点。\n"]
title @a[team=build_parkour,gamemode=adventure] title "\u00a7c超时了"
title @a[team=build_parkour,gamemode=adventure] subtitle "\u00a7f请在\u00a7e15s\u00a7f内放置终点"
clear @a[team=build_parkour,gamemode=adventure] *[custom_data~{"build_parkour":1}]
scoreboard players set build_parkour.state state 6
scoreboard players set build_parkour.time board 15