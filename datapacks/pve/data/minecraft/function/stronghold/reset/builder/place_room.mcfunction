# setblock ~3 ~1 ~3 diamond_block
execute if score pve.stronghold.level board matches 1 run function minecraft:stronghold/reset/builder/random_room/1
execute if score pve.stronghold.level board matches 2 run function minecraft:stronghold/reset/builder/random_room/2
execute if score pve.stronghold.level board matches 3 run function minecraft:stronghold/reset/builder/random_room/3
execute if score pve.stronghold.level board matches 4 run function minecraft:stronghold/reset/builder/random_room/4
execute if score pve.stronghold.level board matches 5 run function minecraft:stronghold/reset/builder/random_room/5
# clone 301 -59 182 317 -49 198 ~1 ~ ~1 strict

summon marker ~ ~ ~ {Tags:["pve.stronghold.rooms","pve.stronghold.rooms.lock"]}
clone 187 -59 106 203 -49 122 ~1 ~ ~1 strict
clone 186 -47 105 204 -46 123 ~ ~11 ~ strict