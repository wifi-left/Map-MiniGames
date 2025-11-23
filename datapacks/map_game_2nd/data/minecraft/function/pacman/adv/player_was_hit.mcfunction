advancement revoke @s only pacman/player_was_hit
# say @s was hit
function minecraft:pacman/died
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
clear @s sunflower[max_stack_size=99,item_name="豆子"] 5
tellraw @s ["\u00a7c失去豆子*5"]
execute at @s run particle explosion ~ ~0.5 ~ 0.1 0.1 0.1 1 10 normal
xp add @s -5 levels
