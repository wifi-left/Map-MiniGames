##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
spawnpoint @a[team=play.killer] 235 56 33
execute as @a[team=play.killer,x=235.0,y=56.0,z=33.0,distance=0..2,gamemode=adventure] at @s run function killerever/died
execute as @a[team=play.killer] at @s run function minecraft:killerever/test_item
