data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:consumable" set value {sound:"minecraft:item.brush.brushing.gravel",animation:"spear",on_consume_effects:[],has_consume_particles:false}
data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:consumable".consume_seconds set from block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown_shoot

data modify block 0 -64 0 Items[{Slot:0b}].components."!minecraft:max_damage" set value {}
data modify block 0 -64 0 Items[{Slot:0b}].components."!minecraft:damage" set value {}
data remove block 0 -64 0 Items[{Slot:0b}].components."!minecraft:max_stack_size"
data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:max_stack_size" set from block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.max_stack_size
data modify block 0 -64 0 Items[{Slot:0b}].count set from block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.count