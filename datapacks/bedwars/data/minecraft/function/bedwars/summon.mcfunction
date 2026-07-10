scoreboard players remove bw.em board 1
scoreboard players remove bw.dm board 1

execute if score bw.em board matches ..0 as @e[type=marker,tag=emerald] at @s run function minecraft:bedwars/summont/emerald

scoreboard players set 20 board 20
scoreboard players operation bw.em.second board = bw.em board
scoreboard players operation bw.dm.second board = bw.dm board
scoreboard players operation bw.em.second board /= 20 board
scoreboard players operation bw.dm.second board /= 20 board

data modify block -307 74 207 front_text.messages[0] set value ["\u00a7e将在",{"score":{"objective":"board","name":"bw.em.second"},"color":"red"},"\u00a7e秒后产生"]
data modify block -307 74 207 front_text.messages[1] set value ["\u00a7e将在",{"score":{"objective":"board","name":"bw.dm.second"},"color":"red"},"\u00a7e秒后产生"]
execute as @e[type=text_display,tag=emerald.subtitle] at @s run data modify entity @s text set from block -307 74 207 front_text.messages[0]
execute as @e[type=text_display,tag=diamond.subtitle] at @s run data modify entity @s text set from block -307 74 207 front_text.messages[1]

execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run function minecraft:bedwars/summont/diamond
execute if score bw.ir board matches ..0 as @e[type=marker,tag=iron] at @s run function minecraft:bedwars/summont/iron
execute if score bw.gd board matches ..0 as @e[type=marker,tag=gold] at @s run function minecraft:bedwars/summont/gold

execute as @e[tag=gold] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=diamond] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=iron] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=emerald] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks

# execute if score bw.em board matches ..0 run scoreboard players set bw.em board 72
# execute if score bw.dm board matches ..0 run scoreboard players set bw.dm board 48
execute if score bw.dm board matches ..0 run scoreboard players operation bw.dm board = bw.set.dm board
execute if score bw.em board matches ..0 run scoreboard players operation bw.em board = bw.set.em board

execute if score bw.gd board matches ..0 run scoreboard players set bw.gd board 160
execute if score bw.ir board matches ..0 run scoreboard players set bw.ir board 50

scoreboard players remove bw.gd board 1
scoreboard players remove bw.ir board 1

