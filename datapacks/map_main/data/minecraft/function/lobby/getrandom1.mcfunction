# scoreboard players operation random board = @e[limit=1,tag=random_saying,sort=random,scores={board=1..11}] board
execute store result score random board run random value 1..26
