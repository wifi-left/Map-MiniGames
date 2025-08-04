# xp set @a[tag=bw.player] 0 levels
# xp set @a[tag=bw.player] 0 points
# 掉落一半经验
xp add @s 1 levels
xp add @s -1 levels
scoreboard players set 2 board 2
scoreboard players operation bw.xpremove board = @s xp
scoreboard players operation bw.xpremove board /= 2 board
title @s actionbar ["\u00a7c失去 Experience ",{"score":{name:"bw.xpremove",objective:"board"},color:aqua}]
execute store result storage minecraft:temp xp int -1 run scoreboard players get bw.xpremove board
execute if score bw.xpremove board matches 1.. run function xp:add with storage minecraft:temp
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~15 ~ 1 0 0
