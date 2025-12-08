execute as @a[team=fishing] if items entity @s container.* #fishing/items run function minecraft:fishing/charge_coin
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishing:tool}}}}]