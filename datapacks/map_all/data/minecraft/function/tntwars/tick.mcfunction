##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.tntwars,gamemode=!creative] at @s run kill @e[type=item,distance=0..5]

execute as @a[team=play.tntwars,gamemode=adventure] at @s as @s[y=-70,dy=10] run function tntwars/die

execute as @a[team=play.tntwars,gamemode=adventure] at @s as @e[type=arrow,tag=!tnt.arrowold,distance=..20] at @s if data entity @s {item:{components:{"minecraft:custom_data":{tnt:10}}}} run function minecraft:tntwars/shoottnt/arrow

function tntwars/calcpeople

execute if score tnt.state state matches 1..2 if score TNT.a.player tick matches ..0 run function tntwars/over/teamb
execute if score tnt.state state matches 1..2 if score TNT.b.player tick matches ..0 run function tntwars/over/teama
