function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7a地图已关闭管理员开始游戏模式！现在任何人都可开始游戏！"]
scoreboard players set map.playmode board 0