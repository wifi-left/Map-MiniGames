function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7c现在管理员不在线时不可以开始游戏。\n\u00a77(单人游戏不受影响)"]
scoreboard players set map.playmode.offline board 0