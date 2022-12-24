effect give @e[team=golf] resistance 3 25 true
# effect give @e[tag=golf.ball] invisibility 3 25 true
execute if score golf.state state matches 1.. as @e[type=zombie,tag=golf.ball] at @s if block ~ ~-1 ~ copper_block run function golf/gaming/next
execute if score golf.state state matches 1.. as @e[type=zombie,tag=golf.ball] at @s if block ~ ~-1 ~ magma_block run function golf/gaming/redo
clear @a[team=golf,gamemode=spectator]
execute as @a[team=golf,gamemode=adventure] run function golf/gaming/item 