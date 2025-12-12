tellraw @a[team=build_parkour] [{selector:"@a[gamemode=adventure,team=build_parkour]"},{text:" \u00a7c未能按时完成跑酷。",color:red}]
scoreboard players set build_parkour.any_success board -1
execute as @s[tag=build_parkour.builder] run give @a[tag=!build_parkour.builder,team=build_parkour] sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"parkour_race":2}] 1
execute as @s[tag=build_parkour.builder] run tellraw @a[tag=!build_parkour.builder,team=build_parkour] ["\u00a7e金币 +1（建造者未能按时完成跑酷）"]
function minecraft:build_parkour/round_over