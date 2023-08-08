# execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=0.5,dy=2,dz=0.5,tag=pve.zombie] add hitted
# execute positioned ~ ~ ~ run tag @e[distance=..0.5,tag=pve.zombie] add hitted
tag @s add selel
execute as @a[distance=0..3,limit=1,team=job_pvp,sort=nearest] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=2,dz=1,tag=selel] run tag @s add hitted
# execute as @a[distance=0..3,limit=1,team=job_pvp,sort=nearest] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=2,dz=1,tag=selel] run say hello @s
# say hello1 @a[tag=hitted]
execute as @a[tag=hitted] if score @s park.uuid = @e[tag=selel,limit=1] park.uuid run tag @s remove hitted
# say hello2 @a[tag=hitted]
# execute as @a[tag=hitted] if score @s park.uuid = @e[tag=selel,limit=1] park.uuid run tellraw wifi_left [{"score":{"name": "@e[tag=selel,limit=1]","objective": "park.uuid"}}]
tag @s remove selel