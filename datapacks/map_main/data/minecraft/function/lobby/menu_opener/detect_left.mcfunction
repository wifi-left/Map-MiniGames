execute unless data entity @s attack.player run return fail

execute store result score UUID.target.0 temp run data get entity @s attack.player[0]
execute store result score UUID.target.1 temp run data get entity @s attack.player[1]
execute store result score UUID.target.2 temp run data get entity @s attack.player[2]
execute store result score UUID.target.3 temp run data get entity @s attack.player[3]

execute as @a[team=lobby] run function minecraft:lobby/menu_opener/player/is_my_uuid

data remove entity @s attack
