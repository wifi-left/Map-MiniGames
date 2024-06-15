##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:dropper[facing=north] run tp ~ ~0.05 ~-0.5
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:dropper[facing=east] run tp ~0.5 ~0.05 ~
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:dropper[facing=south] run tp ~ ~0.05 ~0.5
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:dropper[facing=west] run tp ~-0.5 ~0.05 ~
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:dropper[facing=up] run tp ~ ~0.4 ~
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:dropper[facing=down] run tp ~ ~-0.4 ~

execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:observer[facing=north] run tp ~ ~0.05 ~0.25
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:observer[facing=east] run tp ~-0.25 ~0.05 ~
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:observer[facing=south] run tp ~ ~0.05 ~-0.25
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:observer[facing=west] run tp ~0.25 ~0.05 ~
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:observer[facing=up] run tp ~ ~-0.25 ~
execute as @e[tag=pvp.car] at @s if block ~ ~3.9 ~ minecraft:observer[facing=down] run tp ~ ~0.25 ~
execute as @e[tag=pvp.car] at @s run effect give @a[distance=0..1] slow_falling 2 0 true

execute as @a[team=job_pvp,scores={JOBPVP.die=1..}] at @s run function job_pvp/over
execute as @a[team=job_pvp] at @s run kill @e[type=item,distance=0..6,nbt=!{Item:{components:{"minecraft:custom_data":{job_pvp:1}}}}]
execute as @a[team=wait.jobpvp] at @s run kill @e[type=item,distance=0..6,nbt=!{Item:{components:{"minecraft:custom_data":{job_pvp:1}}}}]
