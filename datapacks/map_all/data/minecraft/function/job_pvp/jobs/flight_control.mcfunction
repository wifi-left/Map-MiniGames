scoreboard players set tmp.control board 0
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{jump:true}}}}] run scoreboard players set tmp.control board 1
execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{sneak:true}}}}] run scoreboard players set tmp.control board 2

execute if predicate [{"condition":"entity_properties","entity":"this","predicate":{type_specific:{type:player,input:{jump:true,sneak:true}}}}] run scoreboard players set tmp.control board 0
execute at @s as @s[y=10,dy=100] run scoreboard players set tmp.control board 2
execute if items entity @s weapon.offhand *[custom_data~{job:uma_stop}] run scoreboard players set tmp.control board 3
attribute @s gravity modifier remove pvp
execute if score tmp.control board matches 1 run attribute @s gravity modifier add pvp -0.02 add_value
execute if score tmp.control board matches 2 run attribute @s gravity modifier add pvp 0.3 add_value
execute if score tmp.control board matches 3 run attribute @s gravity modifier add pvp 0.08 add_value
