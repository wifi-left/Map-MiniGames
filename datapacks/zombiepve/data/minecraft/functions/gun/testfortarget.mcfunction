# execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=0.5,dy=2,dz=0.5,tag=pve.zombie] add hitted
# execute positioned ~ ~ ~ run tag @e[distance=..0.5,tag=pve.zombie] add hitted
tag @s add selel
execute as @e[distance=0..3,limit=1,tag=pve.zombie,sort=nearest,tag=!pve.gunfree] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=2,dz=1,tag=selel] run tag @s add hitted
tag @s remove selel