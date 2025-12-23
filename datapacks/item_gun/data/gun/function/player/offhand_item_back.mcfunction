data modify block 0 -64 0 Items set value []
item replace block 0 -64 0 container.0 from entity @s weapon.offhand
execute unless items entity @s weapon.mainhand * run return run function gun:player/make_offhand_item_back_to_mainhand
item replace entity @s weapon.offhand with air
loot give @s mine 0 -64 0 command_block