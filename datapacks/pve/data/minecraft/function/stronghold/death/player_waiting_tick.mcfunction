function minecraft:stronghold/death/find_deathpoint

execute if score @s player.board matches ..0 run function minecraft:stronghold/death/true
execute if score @s player.board matches 1.. run scoreboard players remove @s player.board 1
# title @s actionbar [""]

tag @e[tag=stronghold.flagged] remove stronghold.flagged