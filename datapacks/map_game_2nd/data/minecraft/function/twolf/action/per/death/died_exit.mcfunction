##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tag @s add wolf.sell
# execute if score @s LRS_JOB matches 9 run function minecraft:twolf/action/per/death/hunter/trigger
# execute if score @s LRS_JOB matches 9 run return 0
# execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell

execute as @s at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1,type=text_display] {text:["\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\u00a7c (已离开游戏)"]}
execute as @s at @s run data merge entity @e[tag=wolf.nametags,distance=0..4,limit=1,type=armor_stand,sort=nearest] {Glowing:false,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{dyed_color:16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{dyed_color:16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{dyed_color:16711680}}},Small:true}

execute as @s[tag=wolf.knight] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1,type=text_display] {text:["\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\u00a7c (骑士，已离开游戏)"]}

tag @s add wolf.died
tag @s remove wolf.tp.sell

tellraw @s ["\n§e§lWARNING：§6你不可以说遗言。\n"]
title @s title ["\u00a7c请不要说话"]
title @s subtitle ["\u00a7f你不可以留下遗言"]


