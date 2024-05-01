##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.tntwars,gamemode=!creative] at @s run kill @e[type=item,distance=0..5]

execute as @a[team=play.tntwars,gamemode=adventure] at @s as @s[y=-70,dy=10] run function tntwars/die
