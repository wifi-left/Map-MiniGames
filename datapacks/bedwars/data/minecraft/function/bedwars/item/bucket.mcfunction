scoreboard players set temp board 0
execute if items entity @s weapon.mainhand bucket[!custom_data~{good_bucket:true}] run scoreboard players set temp board 1
execute if items entity @s weapon.offhand bucket[!custom_data~{good_bucket:true}] run scoreboard players set temp board 2
execute if score temp board matches 1 run item replace entity @s weapon.mainhand with bucket[custom_data={good_bucket:true},can_break=[{blocks:"#minecraft:bedblocks"}],tooltip_display={hidden_components:["can_break","can_place_on"]},can_place_on=[{blocks:"#minecraft:bwplace"}]]
execute if score temp board matches 2 run item replace entity @s weapon.offhand with bucket[custom_data={good_bucket:true},can_break=[{blocks:"#minecraft:bedblocks"}],tooltip_display={hidden_components:["can_break","can_place_on"]},can_place_on=[{blocks:"#minecraft:bwplace"}]]

execute if score temp board matches 1..2 run return 0
clear @s bucket[!custom_data~{good_bucket:true}] 1
give @s bucket[custom_data={good_bucket:true},can_break=[{blocks:"#minecraft:bedblocks"}],tooltip_display={hidden_components:["can_break","can_place_on"]},can_place_on=[{blocks:"#minecraft:bwplace"}]] 1