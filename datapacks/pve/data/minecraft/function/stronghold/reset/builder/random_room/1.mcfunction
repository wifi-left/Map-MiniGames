# START 205 -59 105
# END 281 -59 181
# scoreboard players set pve.stronghold.random_y board 4
# scoreboard players set pve.stronghold.random_y board 4
execute store result score pve.stronghold.random_x board run random value 0..4
execute store result score pve.stronghold.random_y board run random value 3..4
execute in lobby run summon marker 205 -59 105 {Tags:["pve.stronghold.random_room"]}
execute as @e[tag=pve.stronghold.random_room] at @s run function minecraft:stronghold/reset/builder/random_room/move
execute as @e[tag=pve.stronghold.random_room] at @s run function minecraft:stronghold/reset/builder/random_room/clone

kill @e[tag=pve.stronghold.random_room]
