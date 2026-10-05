# 僵尸潮：给每支还有床的队伍在自己的基地刷一组僵尸
# 刻意「不给队伍标签」——僵尸因此会攻击范围内所有玩家（含本队），符合「基地被骚扰」的设定
execute at @e[tag=bw.bed.red,limit=1] run function minecraft:bedwars/special/zombie_group
execute at @e[tag=bw.bed.blue,limit=1] run function minecraft:bedwars/special/zombie_group
execute at @e[tag=bw.bed.yellow,limit=1] run function minecraft:bedwars/special/zombie_group
execute at @e[tag=bw.bed.green,limit=1] run function minecraft:bedwars/special/zombie_group

scoreboard players set bw.zombie.t board 120
tellraw @a[tag=bw.play] ["§4僵尸潮来袭！§7每个基地都被僵尸包围了"]
playsound minecraft:entity.zombie.ambient player @a[tag=bw.play] ~ ~ ~ 1 0.6 1
