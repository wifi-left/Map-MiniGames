# -1 0
# say 2_0
scoreboard players set pve.check board 0
# +1 0 /tp ~19 ~ ~19
execute at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..1] run return 0
scoreboard players set pve.check board 1
return 1