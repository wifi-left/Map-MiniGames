execute if block ~ ~-2 ~ yellow_wool run return run function minecraft:merchant/during/start_a_small_game
execute if block ~ ~-2 ~ pink_wool run return run function minecraft:merchant/player/random_effect
execute if block ~ ~-2 ~ lime_wool run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7a +100 金币"]
execute if block ~ ~-2 ~ lime_wool run scoreboard players add @s merchant.coin 100
execute if block ~ ~-2 ~ red_wool run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7c -100 金币"]
execute if block ~ ~-2 ~ red_wool run scoreboard players remove @s merchant.coin 100
execute if score @s merchant.coin matches ..-1 run function minecraft:merchant/player/action/out

function minecraft:merchant/player/over_turn