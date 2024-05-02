function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7c地图已启用管理员设置游戏模式！现在仅管理员可设定游戏！\n\u00a77(单人游戏不受影响)"]
scoreboard players set map.settingmode board 1