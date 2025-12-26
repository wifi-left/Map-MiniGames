# execute store result score temp.x_motion temp run data get entity @s Motion[0] 10
# execute store result score temp.y_motion temp run data get entity @s Motion[1] 10
# execute store result score temp.z_motion temp run data get entity @s Motion[2] 10

execute store result entity @s Motion[0] double 0.01 run random value -150..150
execute store result entity @s Motion[1] double 0.01 run random value 50..51
execute store result entity @s Motion[2] double 0.01 run random value -150..150

return fail