scoreboard players set stronghold.state state 0
execute as @a[team=stronghold,gamemode=spectator] at @s run gamemode adventure @s
execute as @a[team=stronghold,gamemode=adventure] at @s run function minecraft:stronghold/join