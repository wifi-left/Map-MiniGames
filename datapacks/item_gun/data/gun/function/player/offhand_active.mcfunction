function gun:player/offhand_item_back
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute store result score gun.bullet.now temp run data get block 0 -64 0 Items[{Slot:0b}].count
execute if data block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".gun_data{status:"no_bullet"} run scoreboard players set gun.bullet.now temp 0
function gun:refuse/refuse_bullet
scoreboard players set gun_detect_hotbar temp 9
function gun:player/give_back_gun
