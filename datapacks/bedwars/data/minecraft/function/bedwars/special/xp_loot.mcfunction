# 掉落一半经验
# @a[scores={bw.kill=1..}]
xp add @s 1 levels
xp add @s -1 levels
scoreboard players set 2 board 2
scoreboard players operation bw.xpremove board = @s xp
scoreboard players operation bw.xpremove board /= 2 board
title @a[scores={bw.kill=1..}] actionbar ["\u00a7a+ Experience ",{"score":{name:"bw.xpremove",objective:"board"},color:aqua}]
tellraw @a[scores={bw.kill=1..}] ["\u00a76+ ",{"score":{name:"bw.xpremove",objective:"board"},color:gold},"\u00a76 经验（击杀掠夺）"]
#debug
# tellraw @a ["\u00a76+ ",{"score":{name:"bw.xpremove",objective:"board"},color:gold}," \u00a76经验（击杀掠夺）",{selector:"@a[scores={bw.kill=1..}]"}]
#debugend
execute store result storage minecraft:temp xp int 1 run scoreboard players get bw.xpremove board
execute as @a[scores={bw.kill=1..}] if score bw.xpremove board matches 1.. run function xp:add with storage minecraft:temp
execute as @a[scores={bw.kill=1..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~15 ~ 1 1 0
