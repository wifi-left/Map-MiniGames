execute positioned -230 -13 -382 run summon item ~ ~ ~ {Tags:["killer.new"],Item:{id:"gold_ingot",components:{"minecraft:custom_data":{killer:1}}},Age:4800,Glowing:true,CustomNameVisible:true,CustomName:{text:"金锭",color:yellow,bold:true}}
execute as @e[tag=killer.new,type=item] at @s run function minecraft:killerever/random_pos_item
tag @e[tag=killer.new,type=item] remove killer.new