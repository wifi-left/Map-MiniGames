forceload add 110 300 299 105
execute as @e[tag=pve.stronghold.rooms] at @s run fill ~-1 ~ ~-1 ~19 ~13 ~19 air strict
kill @e[tag=pve.stronghold.rooms]
kill @e[tag=pve.stronghold.builder]
scoreboard players reset @e[tag=stronghold.texts]
kill @e[tag=stronghold.texts]
scoreboard players reset @e[tag=stronghold.diedpoint]
kill @e[tag=stronghold.diedpoint]
execute as @e[type=item] at @s if dimension lobby run kill @s
execute in lobby positioned 200 -64 200 run tp @e[tag=stronghold.mobs] ~ ~ ~
kill @e[tag=stronghold.mobs,type=!player]
bossbar set stronghold value 100
bossbar set stronghold color green
bossbar set stronghold name [{"text":"蚀界行者","color":"#FE4382","bold": true}]
bossbar set stronghold visible false
forceload remove 110 300 299 105
