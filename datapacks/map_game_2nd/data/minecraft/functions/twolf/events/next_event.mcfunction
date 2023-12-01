tag @a remove wolf.acting
function minecraft:twolf/action/resethighlight

execute if score wolf.event board matches 0 run function minecraft:twolf/events/1/trigger
execute if score wolf.event board matches 1 run function minecraft:twolf/events/job/cupid2
# 守卫
execute if score wolf.event board matches 2 run function minecraft:twolf/events/2/trigger
# 纵火犯
execute if score wolf.event board matches 3 run function minecraft:twolf/events/3/trigger
# 狼
execute if score wolf.event board matches 4 run function minecraft:twolf/events/4/trigger
# 女巫
execute if score wolf.event board matches 5 run function minecraft:twolf/events/5/trigger
# 预言家
execute if score wolf.event board matches 6 run function minecraft:twolf/events/6/trigger
# 白天
execute if score wolf.event board matches 7 run function minecraft:twolf/events/day/trigger
# 新一局
execute if score wolf.event board matches 8 run function minecraft:twolf/events/end/trigger

scoreboard players reset @a LRS_CS