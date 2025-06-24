advancement revoke @s only stronghold/player_was_killed
execute as @s[gamemode=creative] run return 0
# say 死了
tag @s add stronghold.d
execute as @s[tag=stronghold.alive] in lobby at @s if entity @a[gamemode=adventure,team=stronghold,tag=!stronghold.d] run function minecraft:stronghold/death/spawn
tag @s remove stronghold.d

# execute as @s[tag=stronghold.alive] in lobby at @s if entity @a[gamemode=adventure,team=stronghold] run function minecraft:stronghold/death/spawn