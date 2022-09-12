playsound entity.experience_orb.pickup player @s 75 13 94 100 1 1
gamemode adventure @s
tp @s 64 16 89 90 0
team join Who_Killer_Text @s
tellraw @a ["\u00a7c\u00a7l[狼人杀] ",{"selector":"@s"}," \u00a7a加入。"]
execute if score wolf.state state matches 1.. run function minecraft:small_games/wolf/spec
title @s title ["\u00a7c\u00a7lWolf Killer"]
title @s subtitle ["\u00a7aThe classical text game."]
tag @s remove lrs.out
tag @s remove taged
effect clear @s