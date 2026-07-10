execute run function minecraft:ballgame/actions/dodgeball/revert_ball

execute store result score temp.x_motion temp run data get entity @s Motion[0] 10
execute store result score temp.y_motion temp run data get entity @s Motion[1] 10
execute store result score temp.z_motion temp run data get entity @s Motion[2] 10

execute if score temp.x_motion temp matches -1..1 if score temp.y_motion temp matches -1..1 if score temp.z_motion temp matches -1..1 run return run function minecraft:ballgame/actions/dodgeball/make_random_motion

execute store result score temp.x temp run data get entity @s Pos[0] 10
execute store result score temp.y temp run data get entity @s Pos[1] 10
execute store result score temp.z temp run data get entity @s Pos[2] 10

execute as @a[distance=..3,gamemode=adventure] if function minecraft:ballgame/actions/dodgeball/whether_hit_by_ball run function minecraft:ballgame/actions/dodgeball/died