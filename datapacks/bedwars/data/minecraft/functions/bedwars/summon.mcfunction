##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#execute if score bw.em board matches ..0 as @e[type=marker,tag=emerald] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
#execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
#execute if score bw.ir board matches ..0 as @e[type=marker,tag=iron] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
#execute if score bw.gd board matches ..0 as @e[type=marker,tag=gold] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}

scoreboard players remove bw.em board 1
scoreboard players remove bw.dm board 1

execute if score bw.em board matches ..0 as @e[type=marker,tag=emerald] at @s run function minecraft:bedwars/summont/emerald

data modify block -307 74 207 front_text.messages[0] set value '["\\u00a7e将在",{"score":{"objective":"board","name":"bw.em"},"color":"red"},"\\u00a7e秒后产生"]'
data modify block -307 74 207 front_text.messages[1] set value '["\\u00a7e将在",{"score":{"objective":"board","name":"bw.dm"},"color":"red"},"\\u00a7e秒后产生"]'
execute as @e[type=text_display,tag=emerald.subtitle] at @s run data modify entity @s text set from block -307 74 207 front_text.messages[0]
execute as @e[type=text_display,tag=diamond.subtitle] at @s run data modify entity @s text set from block -307 74 207 front_text.messages[1]

execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run function minecraft:bedwars/summont/diamond
execute if score bw.ir board matches ..0 as @e[type=marker,tag=iron] at @s run function minecraft:bedwars/summont/iron
execute if score bw.gd board matches ..0 as @e[type=marker,tag=gold] at @s run function minecraft:bedwars/summont/gold

execute as @e[tag=gold] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=diamond] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=iron] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=emerald] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks

# execute if score bw.em board matches ..0 run scoreboard players set bw.em board 72
# execute if score bw.dm board matches ..0 run scoreboard players set bw.dm board 48
execute if score bw.dm board matches ..0 run scoreboard players operation bw.dm board = bw.set.dm board
execute if score bw.em board matches ..0 run scoreboard players operation bw.em board = bw.set.em board

execute if score bw.gd board matches ..0 run scoreboard players set bw.gd board 11
execute if score bw.ir board matches ..0 run scoreboard players set bw.ir board 3

scoreboard players remove bw.gd board 1
scoreboard players remove bw.ir board 1
