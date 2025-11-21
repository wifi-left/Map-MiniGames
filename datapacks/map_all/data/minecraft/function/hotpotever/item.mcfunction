execute if score hotpot.mode board matches 3 unless items entity @s container.* trident run clear @s trident
execute if score hotpot.mode board matches 3 unless items entity @s container.* trident run give @s trident[custom_data={hotpot:1},use_cooldown={seconds:3,cooldown_group:"hotpot"}]

execute if score hotpot.mode board matches 2 unless items entity @s container.* bow run clear @s bow
execute if score hotpot.mode board matches 2 unless items entity @s container.* bow run give @s bow[custom_data={hotpot:1},use_cooldown={seconds:3,cooldown_group:"hotpot"},max_damage=1]

execute if score hotpot.mode board matches 4 unless items entity @s container.* crossbow run clear @s crossbow
execute if score hotpot.mode board matches 4 unless items entity @s container.* crossbow run give @s crossbow[custom_data={hotpot:1},use_cooldown={seconds:3,cooldown_group:"hotpot"},enchantments={quick_charge:5},max_damage=1]

execute if score hotpot.mode board matches 2 unless items entity @s container.* arrow run give @s arrow[custom_data={hotpot:1}]
execute if score hotpot.mode board matches 4 unless items entity @s container.* arrow run give @s arrow[custom_data={hotpot:1}]

execute unless items entity @s container.* potato run give @s potato[custom_data={hotpot:1}]