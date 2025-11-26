execute store result score temp temp run random value 4..6
execute if score temp temp matches 4 run xp set @s 4 levels
execute if score temp temp matches 5 run xp set @s 5 levels
execute if score temp temp matches 6 run xp set @s 6 levels

effect give @s speed 2 4 true
tellraw @s ["\u00a7b你冲刺了。（持续2s）"]