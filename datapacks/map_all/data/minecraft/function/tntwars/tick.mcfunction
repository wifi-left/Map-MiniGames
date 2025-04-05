execute as @a[team=play.tntwars,gamemode=!creative] at @s run kill @e[type=item,distance=0..5]

execute as @a[team=play.tntwars,gamemode=adventure] at @s as @s[y=-70,dy=10] run function tntwars/die

execute as @a[team=play.tntwars,gamemode=adventure] at @s as @e[type=arrow,tag=!tnt.arrowold,distance=..20] at @s if data entity @s {item:{components:{"minecraft:custom_data":{tnt:10}}}} run function minecraft:tntwars/shoottnt/arrow
