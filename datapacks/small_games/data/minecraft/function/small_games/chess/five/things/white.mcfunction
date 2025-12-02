##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[tag=chess.white]
give @a[tag=chess.white,team=chestgame] minecraft:ghast_spawn_egg[entity_data={id:"minecraft:marker",Tags:["chess.put.white"]},can_place_on=[{blocks:['glass']}],custom_data={hideFlags:63},custom_name="\u00a7a放置棋"] 1

