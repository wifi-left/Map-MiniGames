##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=dropper] at @s if block ~ ~ ~ nether_portal run function dropper/nextlevel
execute as @a[x=37,y=-59,z=21,dx=1,dy=1,dz=1,distance=..2] run function dropper/died
