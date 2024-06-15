function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7a地图已启用职业PVP"]
scoreboard players set game.pvp board 1