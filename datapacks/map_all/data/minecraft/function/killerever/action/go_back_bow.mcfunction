clear @s bow[custom_data~{killer.job:to_be_saver}]
tellraw @s ["\u00a7c你无法获得这把弓。它不适合你。"]
execute as @e[type=armor_stand,tag=killer.bow] unless items entity @s weapon.mainhand bow run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{killer:1,killer.job:to_be_saver}}}}}