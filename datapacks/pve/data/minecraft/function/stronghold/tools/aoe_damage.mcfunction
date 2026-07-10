tag @s add stronghold.tmp
execute at @s as @e[distance=..8,tag=stronghold.mobs] run damage @s 5 arrow by @a[tag=stronghold.tmp,limit=1]
execute at @s run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 3 3 3 1 50 normal
tag @s remove stronghold.tmp
advancement revoke @s only stronghold/tools/aoe_damage