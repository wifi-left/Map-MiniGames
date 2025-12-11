##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c对不起，你失败了！"]
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
tellraw @a[team=build_parkour] [{"selector":"@s"},"§c 失败了！"]
execute as @s[tag=build_parkour.builder] run give @a[tag=!build_parkour.builder,team=build_parkour] sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"parkour_race":2}] 1
execute as @s[tag=build_parkour.builder] run tellraw @a[tag=!build_parkour.builder,team=build_parkour] ["\u00a7e金币 +1（建造者没通过Ta自己的跑酷）"]

gamemode spectator @s

scoreboard players add build_parkour.any_success board 1
