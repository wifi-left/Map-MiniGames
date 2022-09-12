#execute if score bw.em board matches ..0 as @e[type=marker,tag=emerald] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
#execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
#execute if score bw.ir board matches ..0 as @e[type=marker,tag=iron] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
#execute if score bw.gd board matches ..0 as @e[type=marker,tag=gold] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{HideFlags:63,CanDe1stroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
execute if score bw.em board matches ..0 as @e[type=marker,tag=emerald] at @s run function minecraft:bedwars/summont/emerald

data merge block -307 74 207 {Text1:'["\\u00a7e将在",{"score":{"objective":"board","name":"bw.em"},"color":"red"},"\\u00a7e秒后产生"]'}
data merge block -307 74 207 {Text2:'["\\u00a7e将在",{"score":{"objective":"board","name":"bw.dm"},"color":"red"},"\\u00a7e秒后产生"]'}
execute as @e[type=area_effect_cloud,tag=emerald.subtitle] at @s run data modify entity @s CustomName set from block -307 74 207 Text1
execute as @e[type=area_effect_cloud,tag=diamond.subtitle] at @s run data modify entity @s CustomName set from block -307 74 207 Text2
# execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run function minecraft:bedwars/summont/diamond
execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run function minecraft:bedwars/summont/diamond
execute if score bw.ir board matches ..0 as @e[type=marker,tag=iron] at @s run function minecraft:bedwars/summont/iron
execute if score bw.gd board matches ..0 as @e[type=marker,tag=gold] at @s run function minecraft:bedwars/summont/gold

execute as @e[tag=gold] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=diamond] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=iron] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=emerald] at @s run fill ~2 ~-2 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks

execute if score bw.em board matches ..0 run scoreboard players set bw.em board 72
execute if score bw.dm board matches ..0 run scoreboard players set bw.dm board 48
execute if score bw.gd board matches ..0 run scoreboard players set bw.gd board 9
execute if score bw.ir board matches ..0 run scoreboard players set bw.ir board 3

scoreboard players remove bw.em board 1
scoreboard players remove bw.dm board 1
scoreboard players remove bw.gd board 1
scoreboard players remove bw.ir board 1