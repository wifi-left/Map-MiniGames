##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute if score temp board matches ..15 run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{HideFlags:63,CanDestroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}}
give @a[tag=bw.play,gamemode=!spectator,distance=0..2] gold_ingot[can_break={predicates:[{blocks:"#minecraft:bedblocks"}],show_in_tooltip:false},can_place_on={predicates:[{blocks:"#minecraft:bwplace"}],show_in_tooltip:false}]

