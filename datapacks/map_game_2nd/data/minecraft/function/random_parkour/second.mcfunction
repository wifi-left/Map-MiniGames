effect give @a[team=random_parkour] resistance 2 25 true
execute if score random_parkour.state state matches 2 run function minecraft:random_parkour/step/wait_start
execute if score random_parkour.state state matches 3 run function minecraft:random_parkour/step/wait_time
execute if score random_parkour.state state matches 3 run function minecraft:random_parkour/testfor
# execute in airworld run fill -57 -63 652 -135 -62 574 air

scoreboard players operation random_parkour.temp temp = random_parkour.time tick
scoreboard players set 10 board 10
scoreboard players operation random_parkour.temp temp %= 10 board
execute if score random_parkour.state state matches 3 if score random_parkour.temp temp matches 0 as @a[team=random_parkour,gamemode=adventure] at @s run loot give @s loot random_parkour/item
# snowball[item_model=fire_charge,item_name='火球 - 右键发射',use_cooldown={seconds:5,cooldown_group:"random_parkour"}] 1