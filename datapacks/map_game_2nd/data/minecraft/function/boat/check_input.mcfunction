##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{backward:true}}}}] run function minecraft:boat/move/backward
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{forward:true}}}}] run function minecraft:boat/move/forward
# execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{left:true}}}}] run function minecraft:boat/move/left
# execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{right:true}}}}] run function minecraft:boat/move/right
# execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{sneak:true}}}}] run function minecraft:boat/move/sneak
# execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{sprint:true}}}}] run function minecraft:boat/move/sprint
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{jump:true}}}}] run function minecraft:boat/move/jump
