# spawnpoint @s 192 -59 135
execute as @a[x=191,y=-59,z=135,gamemode=adventure,dx=3,dy=3,dz=3] at @s run function minecraft:stronghold/died
execute as @a[team=stronghold,gamemode=adventure] at @s if block ~ ~-0.5 ~ test_block run function minecraft:stronghold/game/player_level_end


execute as @a[team=stronghold] at @s as @e[type=item,distance=..5] at @s run function minecraft:stronghold/deal_item
execute as @a[team=stronghold,gamemode=adventure] at @s run function minecraft:stronghold/death/player_tick
execute if score stronghold.state state matches 1..2 as @a[team=stronghold,gamemode=spectator,tag=stronghold.alive] at @s run function minecraft:stronghold/death/player_waiting_tick

scoreboard players add stronghold.time tick 1
