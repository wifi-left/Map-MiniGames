advancement revoke @s only bedwars/player_was_killed
# 先触发
tag @s add bw.was_killed
execute as @a[tag=bw.killed_player] at @s run function minecraft:bedwars/during/player/player_death/kill