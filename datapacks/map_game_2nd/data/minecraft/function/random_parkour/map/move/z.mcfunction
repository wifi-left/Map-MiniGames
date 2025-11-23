scoreboard players set random_parkour.move_way temp 0
#不要z+
execute if score random_parkour.z board matches 242.. run scoreboard players set random_parkour.move_way temp 1
execute if score random_parkour.z board matches 242.. run scoreboard players set random_parkour.waybackz temp 1
#不要z-
execute if score random_parkour.z board matches ..216 run scoreboard players set random_parkour.move_way temp 2
execute if score random_parkour.z board matches ..216 run scoreboard players set random_parkour.waybackz temp 0

execute unless score random_parkour.waybackz temp matches 1 if score random_parkour.move_way temp matches 0 store result score random_parkour.tempz temp run random value 0..3
execute unless score random_parkour.waybackz temp matches 1 if score random_parkour.move_way temp matches 1 store result score random_parkour.tempz temp run random value -3..0
execute unless score random_parkour.waybackz temp matches 1 if score random_parkour.move_way temp matches 2 store result score random_parkour.tempz temp run random value 0..3

execute unless score random_parkour.waybackz temp matches 1 if score random_parkour.tempx temp matches 0 if score random_parkour.move_way temp matches 0 store result score random_parkour.tempz temp run random value 1..4

execute unless score random_parkour.waybackz temp matches 1 if score random_parkour.tempx temp matches 0 if score random_parkour.move_way temp matches 1 store result score random_parkour.tempz temp run random value -3..-1
execute unless score random_parkour.waybackz temp matches 1 if score random_parkour.tempx temp matches 0 if score random_parkour.move_way temp matches 2 store result score random_parkour.tempz temp run random value 1..4




execute if score random_parkour.waybackz temp matches 1 if score random_parkour.move_way temp matches 0 store result score random_parkour.tempz temp run random value -4..0
execute if score random_parkour.waybackz temp matches 1 if score random_parkour.move_way temp matches 1 store result score random_parkour.tempz temp run random value -4..0
execute if score random_parkour.waybackz temp matches 1 if score random_parkour.move_way temp matches 2 store result score random_parkour.tempz temp run random value 0..2

execute if score random_parkour.waybackz temp matches 1 if score random_parkour.tempx temp matches 0 if score random_parkour.move_way temp matches 0 store result score random_parkour.tempz temp run random value -4..-1

execute if score random_parkour.waybackz temp matches 1 if score random_parkour.tempx temp matches 0 if score random_parkour.move_way temp matches 1 store result score random_parkour.tempz temp run random value -4..-1
execute if score random_parkour.waybackz temp matches 1 if score random_parkour.tempx temp matches 0 if score random_parkour.move_way temp matches 2 store result score random_parkour.tempz temp run random value 1..2