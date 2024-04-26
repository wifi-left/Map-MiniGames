tag @s add sel
execute as @e[tag=btw.boat,type=boat] if score @s park.uuid = @a[tag=sel,limit=1] park.uuid run tag @s add damage.boat
execute unless entity @e[tag=damage.boat] at @s run function boatwars/diedbecausenoboat
execute as @s[gamemode=spectator] run tag @e[tag=damage.boat] remove damage.boat
execute as @s[gamemode=spectator] run tag @s remove sel
execute as @s[gamemode=spectator] run return 0
execute unless data entity @s {RootVehicle:{Entity:{Tags:["damage.boat"]}}} run tag @s add btw.notonmyboat
execute as @s[tag=btw.notonmyboat] run tellraw @s ["\u00a7c禁止的操作：下船、换船。"]
execute as @s[tag=btw.notonmyboat] run ride @s dismount
execute as @s[tag=btw.notonmyboat] run ride @s mount @e[tag=damage.boat,limit=1]
tag @s remove btw.notonmyboat
tag @e[tag=damage.boat] remove damage.boat
tag @s remove sel
