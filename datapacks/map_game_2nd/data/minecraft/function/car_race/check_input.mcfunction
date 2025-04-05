##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{backward:true}}}}] run function minecraft:car_race/move/backward
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{forward:true}}}}] run function minecraft:car_race/move/forward
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{jump:true}}}}] run function minecraft:car_race/move/jump
