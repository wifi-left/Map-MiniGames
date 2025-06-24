spawnpoint @a[team=stronghold] 192 -59 135
execute if score stronghold.state state matches 1..2 as @e[tag=pve.stronghold.rooms.fighting] at @s run function minecraft:stronghold/game/detect_if_end
execute if score stronghold.state state matches 1..2 unless entity @e[tag=pve.stronghold.rooms.fighting] run execute as @e[tag=pve.stronghold.rooms.lock] at @s run function minecraft:stronghold/game/detect_if_summon
bossbar set stronghold players @a[team=stronghold]
execute if score stronghold.state state matches 1..5 run function minecraft:stronghold/detect_gameover
execute if score stronghold.state state matches 2 run function minecraft:stronghold/detect_level_end

execute if score stronghold.state state matches 1..2 as @a[team=stronghold,gamemode=spectator,tag=stronghold.alive] at @s run function minecraft:stronghold/death/player_waiting_second
