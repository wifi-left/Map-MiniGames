execute unless data entity @s attack.player run return fail

execute store result score UUID.target.0 temp run data get entity @s attack.player[0]
execute store result score UUID.target.1 temp run data get entity @s attack.player[1]
execute store result score UUID.target.2 temp run data get entity @s attack.player[2]
execute store result score UUID.target.3 temp run data get entity @s attack.player[3]
# tellraw @a ["TARGET UUID: [",{score:{name:"UUID.target.0",objective:temp}},",",{score:{name:"UUID.target.1",objective:temp}},",",{score:{name:"UUID.target.2",objective:temp}},",",{score:{name:"UUID.target.3",objective:temp}},"]"]

execute as @a[team=ballgame] run function minecraft:ballgame/actions/football/kick_ball_is_my_uuid
execute as @a[tag=UUID.sel] at @s run function minecraft:ballgame/make_ball_motion
tag @a[tag=UUID.sel] remove UUID.sel

data remove entity @s attack.player
