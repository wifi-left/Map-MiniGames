execute if score gun_detect_hotbar temp matches 0 run item replace entity @s hotbar.0 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 1 run item replace entity @s hotbar.1 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 2 run item replace entity @s hotbar.2 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 3 run item replace entity @s hotbar.3 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 4 run item replace entity @s hotbar.4 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 5 run item replace entity @s hotbar.5 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 6 run item replace entity @s hotbar.6 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 7 run item replace entity @s hotbar.7 from block 0 -64 0 container.0
execute if score gun_detect_hotbar temp matches 8 run item replace entity @s hotbar.8 from block 0 -64 0 container.0

execute if score gun_detect_hotbar temp matches 9 run item replace entity @s weapon.mainhand with air
execute if score gun_detect_hotbar temp matches 9 run item replace entity @s weapon.mainhand from block 0 -64 0 container.0

execute if score gun_detect_hotbar temp matches 10 run loot give @s mine 0 -64 0 command_block