# tag=potion.speed,
# tag=potion.jump,
# tag=potion.strength,
# tag=potion.slowfall,
# tag=potion.resistance,
scoreboard players operation random board = @e[limit=1,tag=random_saying,sort=random,scores={board=1..5}] board
execute if score random board matches 1 run tag @s add potion.speed
execute if score random board matches 2 run tag @s add potion.jump
execute if score random board matches 3 run tag @s add potion.strength
execute if score random board matches 4 run tag @s add potion.slowfall
execute if score random board matches 5 run tag @s add potion.resistance


execute if score random board matches 1 run data merge entity @s {CustomName:'["\\u00a7b\\u00a7l速度药水"]'}
execute if score random board matches 2 run data merge entity @s {CustomName:'["\\u00a7a\\u00a7l跳跃药水"]'}
execute if score random board matches 3 run data merge entity @s {CustomName:'["\\u00a7c\\u00a7l力量药水"]'}
execute if score random board matches 4 run data merge entity @s {CustomName:'["\\u00a7e\\u00a7l缓降药水"]'}
execute if score random board matches 5 run data merge entity @s {CustomName:'["\\u00a7d\\u00a7l抗性药水"]'}