##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute at @s run playsound minecraft:entity.player.burp player @s ~ ~ ~ 1 1 1
execute at @s run clear @s *[custom_data~{bwshopitem:1}]
execute at @s run clear @s *[custom_data~{shop:1}]
function minecraft:bedwars/shop/resetshop
