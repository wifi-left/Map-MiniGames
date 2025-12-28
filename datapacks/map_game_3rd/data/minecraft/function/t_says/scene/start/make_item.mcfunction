setblock 183 22 373 crafting_table
recipe give @a[team=t_says] *
execute as @a[team=t_says,gamemode=adventure] run function minecraft:t_says/scene/special/make_item
# {t_says.equipment:1}
scoreboard players set t_says.time board 21