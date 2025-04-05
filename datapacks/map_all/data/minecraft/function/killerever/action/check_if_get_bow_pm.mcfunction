scoreboard players set @s temp 0
execute store result score @s temp run clear @s bow[custom_data~{dtb:1b}] 0
execute if score @s temp matches 1.. run tag @s add killer.saver
