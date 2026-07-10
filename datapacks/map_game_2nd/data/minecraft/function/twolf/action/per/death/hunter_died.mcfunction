##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add wolf.sell
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell

execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1,type=text_display] {text:["\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\u00a7c (猎人，已阵亡)"]}
execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..4,limit=1,type=armor_stand,sort=nearest] {Glowing:false,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{dyed_color:16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{dyed_color:16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{dyed_color:16711680}}},Small:true}

tag @e[tag=wolf.tp.sell] add wolf.died
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell
team join wait.wolfpeople
gamemode spectator
# tellraw @s ["\u00a7c你死了"]
# execute at @s run tp @s ~ -20 ~
tellraw @a[tag=wolf.tip] [{"selector":"@s"},"§c 死了。"]
tag @s remove wolf.sell
function minecraft:twolf/action/per/death/died_all
tellraw @s ["\n§e§lWARNING：§6你不可以说遗言。\n"]



title @s title ["\u00a7a请在规定时间内发言"]
title @s subtitle ["\u00a7f你即将死去，你可以留下自己的遗言"]