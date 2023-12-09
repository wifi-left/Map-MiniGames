tag @s add wolf.sell
execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run function minecraft:twolf/action/per/death/boom/whochooseme
tag @s remove wolf.sell
tellraw @a[tag=wolf.tip] ["\u00a7c炸弹人 ",{"selector":"@s"},"\u00a7c 爆炸了。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a7c炸弹人 ",{"selector":"@s"},"\u00a7c 爆炸了。"]

execute as @a[tag=wolf.boomed] run function twolf/action/per/death/boom/died
tag @a remove wolf.boomed