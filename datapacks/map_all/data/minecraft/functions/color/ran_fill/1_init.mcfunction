fill -7 17 75 32 17 114 air
# start from 30 17 77
kill @e[tag=color.test]
summon marker 30 17 77 {Tags:["color.test"]}
# start from 30 17 77 to -5 17 77
# start from 30 17 77 to 30 17 112
execute store result score color.ran.targetcount board run random value 1..5
scoreboard players set color.ran.tpx.to board 36
scoreboard players set color.ran.tpy.to board 36
scoreboard players operation color.ran.tpx.to board /= color.ran.blockwidth board
# scoreboard players operation color.ran.tpx.to board -= 1 board
scoreboard players operation color.ran.tpy.to board /= color.ran.blockwidth board
# scoreboard players operation color.ran.tpy.to board -= 1 board
scoreboard players set color.ran.tpx board 0
scoreboard players set color.ran.tpy board 0
execute as @e[tag=color.test] at @s run function minecraft:color/ran_fill/2_tp