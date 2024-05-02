function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7c地图已禁用职业PVP"]
scoreboard players set game.pvp board 0