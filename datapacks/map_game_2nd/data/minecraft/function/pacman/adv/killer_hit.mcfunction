advancement revoke @s only pacman/player_hit
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
give @s sunflower[max_stack_size=99,item_name="豆子",custom_data={"douzi":1}] 5
tellraw @s ["\u00a76得到豆子*5"]
