# 游玩区域
# 110 -59 206
# 110 -59 282
# 281 -59 206
# 281 -59 282
# START 243 -59 244
forceload add 110 300 299 105
execute if score pve.stronghold.level board matches 1 store result score pve.stronghold.limit board run random value 12..20
execute if score pve.stronghold.level board matches 2 store result score pve.stronghold.limit board run random value 8..15
execute if score pve.stronghold.level board matches 3 store result score pve.stronghold.limit board run random value 8..14
execute if score pve.stronghold.level board matches 4 store result score pve.stronghold.limit board run random value 8..12
execute if score pve.stronghold.level board matches 5 store result score pve.stronghold.limit board run random value 8..12
# scoreboard players set pve.stronghold.limit board 15

execute in lobby run summon marker 281 -59 282 {Tags:["pve.stronghold.builder"]}
# execute in lobby run summon marker 243 -59 244 {Tags:["pve.stronghold.builder"]}
execute as @e[tag=pve.stronghold.builder] at @s run function minecraft:stronghold/reset/builder/start_room
execute as @e[tag=pve.stronghold.builder] at @s run function minecraft:stronghold/reset/builder/move

kill @e[tag=pve.stronghold.builder]

forceload remove 110 300 299 105
