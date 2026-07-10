execute as @a[team=mining] if items entity @s container.* #mining/coin_block run function minecraft:mining/charge_coin
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mining:tool}}}}]
execute positioned -59 157 576 as @a[gamemode=survival,distance=..2] run scoreboard players set @s hub 1
execute positioned -59 157 576 as @a[gamemode=survival,distance=..2] run gamemode spectator
execute positioned -59 157 576 as @a[gamemode=adventure,distance=..2] run scoreboard players set @s hub 1
execute positioned -59 157 576 as @a[gamemode=adventure,distance=..2] run gamemode spectator