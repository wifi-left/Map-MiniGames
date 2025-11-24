tellraw @a[team=wait.killer] ["\n    §c杀手将在 10s 后获得Ta的刀！\n"]
scoreboard players set killer.state state 2
scoreboard players set killer.time tick 11
kill @e[type=armor_stand,tag=killer.bow]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{killer:1}}}}]