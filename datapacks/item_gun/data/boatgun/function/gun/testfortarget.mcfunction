##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=0.5,dy=2,dz=0.5,tag=pve.zombie] add hitted
# execute positioned ~ ~ ~ run tag @e[distance=..0.5,tag=pve.zombie] add hitted
tag @s add selel
execute as @e[distance=0..3,limit=1,team=btw.play.a,sort=nearest,gamemode=adventure] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=2,dz=1,tag=selel] run tag @s add hitted
execute as @e[distance=0..3,limit=1,team=btw.play.b,sort=nearest,gamemode=adventure] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=2,dz=1,tag=selel] run tag @s add hitted
# say @a[tag=hitted]
tag @s remove selel

