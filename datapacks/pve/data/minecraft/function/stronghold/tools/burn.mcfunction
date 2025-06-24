execute at @s as @e[distance=..10,tag=stronghold.mobs] run data merge entity @s {Fire:100}
advancement revoke @s only stronghold/tools/burn
execute at @s run particle dust{color:[1,0,0],scale:1} ~ ~ ~ 3 3 3 1 50 normal
