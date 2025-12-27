kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{one_arrow:arrow}}}}]
execute as @a[team=one_arrow,gamemode=adventure] at @s as @e[type=item,distance=..5,nbt=!{Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}] run data merge entity @s {Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}

execute positioned -71 -2 224 as @a[distance=..1,team=one_arrow,gamemode=adventure] at @s run function minecraft:one_arrow/died

execute as @a[team=one_arrow,gamemode=adventure,tag=!one_arrow.inv] if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{"type":"player",input:{sneak:true}}}} run effect give @s invisibility 4 1 true
execute as @a[team=one_arrow,gamemode=adventure,tag=!one_arrow.inv] if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{"type":"player",input:{sneak:true}}}} run tag @s add one_arrow.inv
execute as @a[team=one_arrow,gamemode=adventure,tag=one_arrow.inv] unless predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{"type":"player",input:{sneak:true}}}} run effect clear @s invisibility
execute as @a[team=one_arrow,gamemode=adventure,tag=one_arrow.inv] unless predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{"type":"player",input:{sneak:true}}}} run tag @s remove one_arrow.inv

execute as @a[team=one_arrow,gamemode=adventure] if data entity @s active_effects[{id:"minecraft:invisibility"}] at @s run particle dust{color:4508740,scale:0.5} ~ ~ ~ 0 0 0 0 1 force

clear @a[team=one_arrow,gamemode=adventure] glass_bottle
execute if score one_arrow.state state matches 3 as @a[team=one_arrow,gamemode=adventure] at @s run function minecraft:one_arrow/g_item