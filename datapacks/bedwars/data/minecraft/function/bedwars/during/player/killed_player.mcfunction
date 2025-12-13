advancement revoke @s only bedwars/player_killed
# 后触发
tag @s add bw.killed_player
execute if entity @a[tag=bw.was_killed] run return run function minecraft:bedwars/during/player/player_death/kill