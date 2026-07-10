advancement revoke @s only stronghold/player_was_killed
execute as @s[gamemode=creative] run return 0
# say 死了
tag @s add stronghold.d
execute as @s[tag=stronghold.alive] in lobby at @s if entity @a[gamemode=adventure,team=stronghold,tag=!stronghold.d] unless items entity @s container.* *[custom_data~{stronghold:"health"}] run function minecraft:stronghold/death/spawn
execute as @s[tag=stronghold.alive] in lobby if items entity @s container.* *[custom_data~{stronghold:"health"}] run function minecraft:stronghold/death/spawn
tag @s remove stronghold.d

# execute as @s[tag=stronghold.alive] in lobby at @s if entity @a[gamemode=adventure,team=stronghold] run function minecraft:stronghold/death/spawn