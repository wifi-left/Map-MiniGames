playsound minecraft:entity.sheep.ambient block @a ~ ~ ~ 5 0.5 1
scoreboard players remove @s board 1
scoreboard players operation tmp board = @s board
data merge block -307 74 207 {Text3:'["\\u00a7C\\u00a7lTNT SHEEP \\u00a77- ",{"score":{"objective":"board","name":"tmp"},"color":"aqua"},"\\u00a7e 秒后爆炸"]'}
data modify entity @s CustomName set from block -307 74 207 Text3
execute if score @s board matches ..0 run function bedwars/item/sheepboom