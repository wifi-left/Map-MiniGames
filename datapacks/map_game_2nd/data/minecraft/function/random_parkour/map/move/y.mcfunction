scoreboard players set random_parkour.move_way temp 0
#不要y+
execute if score random_parkour.y board matches -10.. run return run scoreboard players set random_parkour.tempy temp 0
#不要y-
execute if score random_parkour.y board matches ..-61 run scoreboard players set random_parkour.move_way temp 2

execute if score random_parkour.tempx temp matches 4.. run scoreboard players set random_parkour.move_way temp 3
execute if score random_parkour.tempx temp matches ..-4 run scoreboard players set random_parkour.move_way temp 3
execute if score random_parkour.tempz temp matches 4.. run scoreboard players set random_parkour.move_way temp 3
execute if score random_parkour.tempz temp matches ..-4 run scoreboard players set random_parkour.move_way temp 3

execute if score random_parkour.tempx temp matches 0 if score random_parkour.tempz temp matches 0 run scoreboard players set random_parkour.move_way temp 3

execute if score random_parkour.move_way temp matches 0 store result score random_parkour.tempy temp run random value -12..2
execute if score random_parkour.move_way temp matches 1 store result score random_parkour.tempy temp run random value -1..0
execute if score random_parkour.move_way temp matches 2 store result score random_parkour.tempy temp run random value -10..2
execute if score random_parkour.move_way temp matches 3 run scoreboard players set random_parkour.tempy temp 0

execute if score random_parkour.tempy temp matches ..-1 run scoreboard players set random_parkour.tempy temp 0

execute if score random_parkour.x board matches 100.. unless score random_parkour.waybackx temp matches 1 store result score random_parkour.tempy temp run random value 0..2
execute if score random_parkour.x board matches ..22 if score random_parkour.waybackx temp matches 1 store result score random_parkour.tempy temp run random value 0..2