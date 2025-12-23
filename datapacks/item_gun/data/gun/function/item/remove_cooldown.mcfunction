scoreboard players remove gun.cooldown.left temp 1
execute store result score gun.cooldown.total temp run data get block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown
# Items[{Slot:0b}].components."minecraft:custom_data".gun_data.count
data remove block 0 -64 0 Items[{Slot:0b}].components."!minecraft:damage"
data remove block 0 -64 0 Items[{Slot:0b}].components."!minecraft:unbreakable"
data remove block 0 -64 0 Items[{Slot:0b}].components."!minecraft:max_damage"
data modify block 0 -64 0 Items[{Slot:0b}].components."!minecraft:max_stack_size" set value {}
data modify block 0 -64 0 Items[{Slot:0b}].count set value 1
execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown_left int 1 run scoreboard players get gun.cooldown.left temp
execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:damage" int 1 run scoreboard players get gun.cooldown.left temp
data remove block 0 -64 0 Items[{Slot:0b}].components."minecraft:consumable"
execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:max_damage" int 1 run scoreboard players get gun.cooldown.total temp
execute if score gun.cooldown.left temp matches 0 run function gun:item/cooldown_fin

function gun:player/give_back_gun