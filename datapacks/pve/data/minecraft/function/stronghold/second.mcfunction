spawnpoint @a[team=stronghold] 192 -59 135

bossbar set stronghold players @a[team=stronghold]
bossbar set stronghold.boss players @a[team=stronghold]

execute if score stronghold.state state matches 1..5 run function minecraft:stronghold/detect_gameover
execute if score stronghold.state state matches 2 run function minecraft:stronghold/detect_level_end

execute if score stronghold.state state matches 1..2 as @a[team=stronghold,gamemode=spectator,tag=stronghold.alive] at @s run function minecraft:stronghold/death/player_waiting_second

# execute unless entity @e[tag=stronghold.boss] run bossbar set stronghold.boss visible false
