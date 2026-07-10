execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot[custom_data~{xp:1}]
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot[custom_data~{xp:1}]
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald[custom_data~{xp:1}]

scoreboard players set 1 board 1
scoreboard players set 20 board 20
# scoreboard players set 120 board 120
scoreboard players set 300 board 300
scoreboard players set bw.xptotal board 0
scoreboard players operation bw.xptmp board = @s bw.tmp.ir
scoreboard players operation bw.xptotal board += bw.xptmp board
# scoreboard players operation bw.xptotal board *= 1 board
scoreboard players operation bw.xptmp board = @s bw.tmp.gd
scoreboard players operation bw.xptmp board *= 20 board
scoreboard players operation bw.xptotal board += bw.xptmp board
scoreboard players operation bw.xptmp board = @s bw.tmp.em
scoreboard players operation bw.xptmp board *= 300 board
scoreboard players operation bw.xptotal board += bw.xptmp board

execute if score bw.xptotal board matches ..0 run return 0
title @s actionbar ["\u00a7aExperience \u00a7b+",{"score":{name:"bw.xptotal",objective:"board"},color:aqua}]
execute store result storage minecraft:temp xp int 1 run scoreboard players get bw.xptotal board
function xp:add with storage minecraft:temp
# scoreboard players reset @s bw.tmp.gd
# scoreboard players reset @s bw.tmp.dm
# scoreboard players reset @s bw.tmp.em
# /data merge storage minecraft:temp
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~15 ~ 1 2 0
