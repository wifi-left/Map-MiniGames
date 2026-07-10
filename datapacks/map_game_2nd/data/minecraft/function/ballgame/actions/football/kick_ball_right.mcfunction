execute unless data entity @s interaction.player run return fail

execute store result score UUID.target.0 temp run data get entity @s interaction.player[0]
execute store result score UUID.target.1 temp run data get entity @s interaction.player[1]
execute store result score UUID.target.2 temp run data get entity @s interaction.player[2]
execute store result score UUID.target.3 temp run data get entity @s interaction.player[3]
execute as @a[team=ballgame] run function minecraft:ballgame/actions/football/kick_ball_is_my_uuid
execute as @a[tag=UUID.sel] at @s run function minecraft:ballgame/make_ball_motion_stop
tag @a[tag=UUID.sel] remove UUID.sel

data remove entity @s interaction.player
