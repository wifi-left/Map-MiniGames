execute as @s at @s run tag @e[tag=GCAR,tag=!being_ridden,distance=..5] add flagged
execute unless entity @e[tag=flagged] run function car_race/fail
ride @s mount @e[tag=flagged,limit=1]
tag @e[tag=flagged] remove flagged
# tag @s remove 