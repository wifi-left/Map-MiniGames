execute as @a[team=miner,gamemode=survival] run kill @e[type=item,distance=..10]
execute positioned -59 157 576 as @a[gamemode=survival,distance=..2] run scoreboard players set @s hub 1
execute positioned -59 157 576 as @a[gamemode=survival,distance=..2] run gamemode spectator
execute positioned -59 157 576 as @a[gamemode=adventure,distance=..2] run scoreboard players set @s hub 1
execute positioned -59 157 576 as @a[gamemode=adventure,distance=..2] run gamemode spectator
execute as @a[team=miner,gamemode=survival] at @s if block ~ ~-0.5 ~ bedrock run function minecraft:miner/finish