# 0 +1
# +1 0 /tp ~19 ~ ~19
# say 0_1
scoreboard players set pve.check board 0
execute at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..1] run return 0
scoreboard players set pve.check board 1
return 1