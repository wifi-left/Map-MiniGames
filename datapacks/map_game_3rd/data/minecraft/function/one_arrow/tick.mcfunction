kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{one_arrow:arrow}}}}]
execute as @a[team=one_arrow,gamemode=adventure] at @s as @e[type=item,distance=..5,nbt=!{Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}] run data merge entity @s {Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}

execute positioned -71 -2 224 as @a[distance=..1,team=one_arrow,gamemode=adventure] at @s run function minecraft:one_arrow/died

execute as @a[team=one_arrow,gamemode=adventure] if predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{"type":"player",input:{sneak:true}}}} run effect give @s invisibility 1 1 true
execute as @a[team=one_arrow,gamemode=adventure] unless predicate {condition:"entity_properties",entity:"this",predicate:{"type_specific":{"type":"player",input:{sneak:true}}}} if data entity @s active_effects[{id:"minecraft:invisibility",amplifier:1b}] run effect clear @s invisibility
clear @a[team=one_arrow,gamemode=adventure] glass_bottle
execute if score one_arrow.state state matches 3 as @a[team=one_arrow,gamemode=adventure] at @s run function minecraft:one_arrow/g_item