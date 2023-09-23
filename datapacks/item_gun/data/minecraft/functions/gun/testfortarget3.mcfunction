# execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=0.5,dy=2,dz=0.5,tag=pve.zombie] add hitted
# execute positioned ~ ~ ~ run tag @e[distance=..0.5,tag=pve.zombie] add hitted
tag @s add selel
execute as @e[distance=0..7,limit=1,tag=pve.zombie,sort=nearest,tag=!hitted,tag=!pve.gunfree] at @s positioned ~-1 ~-1 ~-1 if entity @e[dx=7,dy=4,dz=7,tag=selel] run tag @s add hitted
# execute as @e[distance=0..5,limit=1,tag=pve.zombie,sort=nearest] at @s positioned ~-1 ~-1 ~-1 run say hi @e[dx=7,dy=4,dz=7,tag=selel]

tag @s remove selel
# say hi @a[tag=hitted]