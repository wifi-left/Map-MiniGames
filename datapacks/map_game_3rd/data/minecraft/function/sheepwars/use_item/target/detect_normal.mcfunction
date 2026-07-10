scoreboard players set temp.x_motion temp 0
scoreboard players set temp.y_motion temp 0
scoreboard players set temp.z_motion temp 0
execute store result score temp.x_motion temp run data get entity @s Motion[0] 10
execute store result score temp.y_motion temp run data get entity @s Motion[1] 10
execute store result score temp.z_motion temp run data get entity @s Motion[2] 10

execute if score temp.x_motion temp matches -1..1 if score temp.y_motion temp matches -1..1 if score temp.z_motion temp matches -1..1 run function minecraft:sheepwars/use_item/target/stop