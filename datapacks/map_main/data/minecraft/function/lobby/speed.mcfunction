scoreboard players add speed lobby.effect 0
execute if score speed lobby.effect matches -10..0 run function lobby/speed_one
execute if score speed lobby.effect matches 1..1 run function lobby/speed_two
execute if score speed lobby.effect matches 2..2 run function lobby/speed_off
scoreboard players add speed lobby.effect 1
execute if score speed lobby.effect matches 3.. run scoreboard players set speed lobby.effect 0
