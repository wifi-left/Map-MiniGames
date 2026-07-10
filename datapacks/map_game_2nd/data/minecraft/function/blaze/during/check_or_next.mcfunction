scoreboard players set blaze.time board -1
execute if score blaze.mode board matches 3 run scoreboard players add blaze.police.state board 1

execute if score blaze.mode board matches 3 if score blaze.police.state board matches 3 run function blaze/during/round_over_police

execute if score blaze.mode board matches 3 if score blaze.police.state board matches 1 run function minecraft:blaze/during/event/police/change_to_a
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 2 run function minecraft:blaze/during/event/police/change_to_b
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 1 run function minecraft:blaze/during/check_and_over
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 2 run scoreboard players add blaze.round board 1
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 2 run function minecraft:blaze/during/check_and_over_pvp


execute if score blaze.state state matches 2..10 run function minecraft:blaze/during/prepare_next_round