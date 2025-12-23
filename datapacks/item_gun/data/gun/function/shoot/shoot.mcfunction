scoreboard players set gun_detect_hotbar temp 9
data modify block 0 -64 0 Items set value []
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute unless function gun:shoot/check_status run return run function gun:player/give_back_gun_fail
execute at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2 1
execute at @s run function gun:shoot/make_bullet
function gun:shoot/make_info
