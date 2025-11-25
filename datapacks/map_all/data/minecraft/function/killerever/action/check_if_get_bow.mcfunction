##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless items entity @s container.* crossbow[custom_data~{killer.job:to_be_saver}] run return 0
execute as @s[tag=killer.killer] run return run function minecraft:killerever/action/go_back_bow
execute as @s[tag=killer.saver] run return run function minecraft:killerever/action/go_back_bow
clear @s crossbow[custom_data~{killer.job:to_be_saver}]
tag @s add killer.saver
function minecraft:killerever/step/give_item/saver
execute as @e[type=armor_stand,tag=killer.bow] unless items entity @s weapon.mainhand crossbow run kill @s
