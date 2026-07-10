
# execute as @s at @s run tp @s ~19 ~ ~19
execute if score pve.stronghold.level board matches 1 run clone 301 -59 182 317 -49 198 ~1 ~ ~1
execute if score pve.stronghold.level board matches 2 run clone 301 -47 182 317 -37 198 ~1 ~ ~1
execute if score pve.stronghold.level board matches 3 run clone 301 -35 182 317 -25 198 ~1 ~ ~1
execute if score pve.stronghold.level board matches 4 run clone 301 -23 182 317 -13 198 ~1 ~ ~1
execute if score pve.stronghold.level board matches 5 run clone 301 -11 182 317 -1 198 ~1 ~ ~1

summon marker ~ ~ ~ {Tags:["pve.stronghold.rooms","pve.stronghold.start"]}
