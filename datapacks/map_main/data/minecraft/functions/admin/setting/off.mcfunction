function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["\u00a7a地图已关闭仅管理员可设置游戏模式！现在任何人都可设置游戏！"]
scoreboard players set map.settingmode board 0