scoreboard players set killer.itemcount temp 0
execute store result score killer.itemcount temp run clear @s gold_ingot 0
execute if entity @s[tag=killer.saver] run return 0
execute unless score killer.itemcount temp matches 10.. run return 0
clear @s gold_ingot 10
execute unless items entity @s container.* bow unless items entity @s weapon.offhand bow run return run function minecraft:killerever/give_bow_and_arrow_for_normal
give @s arrow[custom_data={killer:1}] 1