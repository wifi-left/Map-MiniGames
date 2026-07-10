execute unless items block 0 -64 0 container.0 *[custom_data~{gun_data:{is_gun:true}}] run return fail
execute store result score gun.cooldown.left temp run data get block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data.cooldown_left
execute if score gun.cooldown.left temp matches 1.. run return run function gun:item/remove_cooldown