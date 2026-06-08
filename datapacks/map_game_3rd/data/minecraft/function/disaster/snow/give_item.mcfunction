execute store result score random temp run random value 1..21
execute if score random temp matches 1..6 run give @s wooden_shovel[item_name='勺子 - 仅能用一次',can_break={blocks:["snow_block"]},!attribute_modifiers,max_damage=1]
execute if score random temp matches 7..12 run give @s snow_block[can_place_on={blocks:["snow_block"]},max_stack_size=1]
execute if score random temp matches 13..14 run give @s stone_shovel[item_name='勺子 - 仅能用3次',can_break={blocks:["snow_block"]},!attribute_modifiers,max_damage=3]
execute if score random temp matches 15 run give @s bow[custom_data={disaster.snow:bomb_bow},max_damage=1,item_name='爆炸弓']
execute if score random temp matches 16..17 run give @s snowball[item_model='fire_charge'] 2
execute if score random temp matches 18 run give @s fishing_rod[max_damage=1]
execute if score random temp matches 19 run give @s stick[max_damage=1,enchantments={knockback:2},item_name='击退棍',!max_stack_size]
execute if score random temp matches 20 run give @s ender_pearl
execute if score random temp matches 21 run give @s golden_shovel[item_name='勺子 - 仅能用6次',can_break={blocks:["snow_block"]},!attribute_modifiers,max_damage=6]