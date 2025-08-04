execute at @s run effect give @e[distance=..10,tag=stronghold.mobs] slowness 10 1
execute at @s run effect give @e[distance=..10,tag=stronghold.mobs] minecraft:mining_fatigue 10 1
execute at @s run particle dust{color:[0,0,100],scale:4} ~ ~ ~ 2 2 2 1 50 normal

advancement revoke @s only stronghold/tools/freeze
