##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[tag=chess.black]
give @a[tag=chess.black,team=chestgame] minecraft:bat_spawn_egg[entity_data={id:"minecraft:marker",Tags:["chess.put.black"]},can_place_on={predicates:[{blocks:['glass']}]},custom_data={hideFlags:63},custom_name='"\\u00a7a放置棋"'] 1
