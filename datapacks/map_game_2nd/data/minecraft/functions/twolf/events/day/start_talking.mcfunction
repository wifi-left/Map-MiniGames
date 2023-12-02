# say day
tag @a remove wolf.toupaoed
tellraw @a[tag=wolf.tip,gamemode=spectator] ["\u00a7c死者现在开始请勿发言。"]
title @a[tag=wolf.tip,gamemode=spectator] title ["\u00a7c停止发言"]
title @a[tag=wolf.tip,gamemode=spectator] subtitle ["\u00a7f死者现在开始请勿发言。"]
execute if score wolf.round board matches 1 run function twolf/tips/day
tellraw @a[tag=wolf.tip,gamemode=adventure] ["\u00a7b\u00a7l现在开始是发言阶段。请在时间之内自由发言并投票。"]
scoreboard players set wolf.time board 150
scoreboard players set wolf.event board 10

execute as @a[gamemode=adventure,team=wolfpeople,tag=wolf.tip] run function twolf/items/day