##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
item replace entity @e[type=item_frame,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand

data modify entity @s CustomName set from entity @s HandItems[0].components."minecraft:custom_name"

execute unless data entity @s HandItems[0].components."minecraft:custom_data" run data merge entity @s {CustomName:'"\\u00a78(空)"'}
