##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:entity.sheep.ambient block @a ~ ~ ~ 5 0.5 1
scoreboard players remove @s board 1
scoreboard players operation tmp board = @s board
data modify block -307 74 207 front_text.messages[2] set value '["\\u00a7C\\u00a7lTNT SHEEP \\u00a77- ",{"score":{"objective":"board","name":"tmp"},"color":"aqua"},"\\u00a7e 秒后爆炸"]'

data modify entity @s CustomName set from block -307 74 207 front_text.messages[2]

execute if score @s board matches 5 run data merge entity @s {Color:14b}

execute if score @s board matches 3 run data merge entity @s {Color:14b}

execute if score @s board matches 1 run data merge entity @s {Color:14b}

execute if score @s board matches 4 run data merge entity @s {Color:0b}

execute if score @s board matches 2 run data merge entity @s {Color:0b}

execute if score @s board matches 0 run data merge entity @s {Color:0b}
execute if score @s board matches ..0 run function bedwars/item/sheepboom
