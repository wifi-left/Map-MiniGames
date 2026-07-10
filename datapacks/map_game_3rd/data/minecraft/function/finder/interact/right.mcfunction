execute unless data entity @s interaction.player run return fail

execute store result score UUID.target.0 temp run data get entity @s interaction.player[0]
execute store result score UUID.target.1 temp run data get entity @s interaction.player[1]
execute store result score UUID.target.2 temp run data get entity @s interaction.player[2]
execute store result score UUID.target.3 temp run data get entity @s interaction.player[3]
execute as @a[team=finder] run function minecraft:ballgame/actions/football/kick_ball_is_my_uuid


data remove entity @s interaction.player
