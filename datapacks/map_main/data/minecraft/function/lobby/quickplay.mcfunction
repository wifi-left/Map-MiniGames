##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s quickplay matches 1 run function minecraft:lobby/quickplay_lists
execute if score @s quickplay matches -1 run function minecraft:lobby/quickplay_lists_dialog

execute if score @s quickplay matches 2 run function battle/join
execute if score @s quickplay matches 3 run function believer/join
execute if score @s quickplay matches 4 run function car_race/join
execute if score @s quickplay matches 5 run function endless_wolf/join
execute if score @s quickplay matches 6 run function color/join
execute if score @s quickplay matches 7 run function dropper/join
execute if score @s quickplay matches 8 run function duel/join
execute if score @s quickplay matches 9 run function golf/join
execute if score @s quickplay matches 10 run function hide2/join
execute if score @s quickplay matches 11 run function hideseek/join
execute if score @s quickplay matches 12 run function hotpotever/join
execute if score @s quickplay matches 13 run function hunger/join
execute if score @s quickplay matches 14 run function job_pvp/join
execute if score @s quickplay matches 15 run function killerever/join
execute if score @s quickplay matches 16 run function live/join
execute if score @s quickplay matches 17 run function lpark/join
execute if score @s quickplay matches 18 run function poolwar/join
execute if score @s quickplay matches 19 run function small_games/chess/join
execute if score @s quickplay matches 20 run function twolf/join
execute if score @s quickplay matches 21 run function small_games/total/join
execute if score @s quickplay matches 22 run function snow/join
execute if score @s quickplay matches 23 run function tntwars/join
execute if score @s quickplay matches 24 run function zombieever/join
execute if score @s quickplay matches 25 run function surgame:join
execute if score @s quickplay matches 26 run function bedwars/message/join
execute if score @s quickplay matches 27 run function desk/join
execute if score @s quickplay matches 28 run function bomb/join
execute if score @s quickplay matches 29 run function stronghold/join
execute if score @s quickplay matches 30 run function blaze/join
execute if score @s quickplay matches 31 run function cloud/join
execute if score @s quickplay matches 32 run function pillar/join
execute if score @s quickplay matches 33 run tag @s add join.hit
execute if score @s quickplay matches 34 run function parkourrace/join
execute if score @s quickplay matches 35 run function boatwars/join
execute if score @s quickplay matches 36 run function sneak/join
execute if score @s quickplay matches 37 run function pacman/join
execute if score @s quickplay matches 38 run function miner/join
execute if score @s quickplay matches 39 run function mining/join
execute if score @s quickplay matches 40 run function chair/join
execute if score @s quickplay matches 41 run function random_parkour/join
execute if score @s quickplay matches 42 run function ballgame/join
execute if score @s quickplay matches 43 run function fishing/join
execute if score @s quickplay matches 44 run function build_parkour/join
execute if score @s quickplay matches 45 run function finder/join
execute if score @s quickplay matches 46 run function build_guess/join
execute if score @s quickplay matches 47 run function one_arrow/join
execute if score @s quickplay matches 48 run function elytra/join
execute if score @s quickplay matches 49 run function t_says/join
execute if score @s quickplay matches 50 run function mutouren/join

execute if score @s quickplay matches 1.. run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute if score @s quickplay matches 51.. run tellraw @s ["§c很抱歉，未知游戏的ID！"]

execute if score @s quickplay matches 1.. run scoreboard players reset @s quickplay
