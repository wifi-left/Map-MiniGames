playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @s ["\u00a7a您已成为游戏地图管理员。"]
tag @s add map.op
function minecraft:admin/admin/manager