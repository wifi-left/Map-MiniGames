function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7a现在管理员不在线时可以开始游戏。"]
scoreboard players set map.playmode.offline board 1