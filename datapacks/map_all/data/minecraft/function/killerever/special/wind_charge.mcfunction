execute store result score killer.itemcount temp run clear @s gold_ingot 0
execute unless score killer.itemcount temp matches 1.. run return run tellraw @s ["\u00a7c金锭不够"]
clear @s gold_ingot 1
give @s wind_charge
particle dust{color:16777215,scale:2} ~ ~ ~ 0 0 0 1 2 normal
playsound entity.wind_charge.wind_burst player @s ~ ~ ~ 1 0 1
