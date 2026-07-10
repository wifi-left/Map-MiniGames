scoreboard players set random_parkour.move_way temp 0
#不要x+

execute if score random_parkour.x board matches 100.. run scoreboard players set random_parkour.move_way temp 1
execute if score random_parkour.x board matches 99.. run scoreboard players set random_parkour.waybackx temp 1
#不要x-
execute if score random_parkour.x board matches ..19 run scoreboard players set random_parkour.move_way temp 2
execute if score random_parkour.x board matches ..20 run scoreboard players set random_parkour.waybackx temp 0

execute unless score random_parkour.waybackx temp matches 1 if score random_parkour.move_way temp matches 0 store result score random_parkour.tempx temp run random value 0..2
execute if score random_parkour.waybackx temp matches 1 if score random_parkour.move_way temp matches 0 store result score random_parkour.tempx temp run random value -2..0
execute if score random_parkour.move_way temp matches 1 store result score random_parkour.tempx temp run random value -2..0
execute if score random_parkour.move_way temp matches 2 store result score random_parkour.tempx temp run random value 0..2
