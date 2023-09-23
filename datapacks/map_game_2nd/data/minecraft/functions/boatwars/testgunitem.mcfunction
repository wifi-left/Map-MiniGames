execute store result score tmp board run clear @s carrot_on_a_stick 0
execute if score tmp board matches ..0 run function boatwars/gunitem
execute if score tmp board matches 2.. run clear @s carrot_on_a_stick
execute if score tmp board matches 2.. run function boatwars/gunitem