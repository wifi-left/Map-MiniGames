title @a[team=boat] subtitle ["\u00a7b游戏开始"]
tellraw @a[team=boat] ["\u00a7e游戏开始！"]
# fill -66 165 -94 -60 160 -95 air replace stone_brick_wall
fill -76 141 295 -89 135 294 air replace cobblestone_wall

execute as @a[team=boat] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 5 1 1
execute as @a[team=boat] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 5 2 1
team modify boat prefix ["\u00a76[P]\u00a79 冰船\u00a78 | "]
scoreboard players set number boat.rounds 0
scoreboard players set boat.state state 1
