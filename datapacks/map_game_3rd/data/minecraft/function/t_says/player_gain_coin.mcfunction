$xp add @s $(count) levels
$give @s sunflower[max_stack_size=99,item_name="金币",custom_data={"douzi":1}] $(count)
$tellraw @s ["\u00a76+$(count) 金币 ($(reason))"]