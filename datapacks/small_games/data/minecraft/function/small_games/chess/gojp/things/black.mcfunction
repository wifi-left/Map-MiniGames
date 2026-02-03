##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @a[tag=chess.black]
give @a[tag=chess.black,team=chestgame] minecraft:bat_spawn_egg[entity_data={id:"minecraft:marker",Tags:["chess.put.black"]},can_place_on=[{blocks:['glass']}],custom_data={hideFlags:63},custom_name="\u00a7a放置棋",attribute_modifiers=[{id:"reach",amount:20,operation:"add_value",type:"block_interaction_range",display:{type:"override",value:{text:"长臂猿",color:gray}}}]] 1

