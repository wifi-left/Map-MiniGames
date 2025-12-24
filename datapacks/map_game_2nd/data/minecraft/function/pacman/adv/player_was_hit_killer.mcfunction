advancement revoke @s only pacman/player_was_hit_killer
# say @s was hit
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
tellraw @s ["\u00a7c你被打回出生点了"]
tp @s -149 -59 -255 0 0

execute at @s run particle explosion ~ ~0.5 ~ 0.1 0.1 0.1 1 10 normal
