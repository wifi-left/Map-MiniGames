# tellraw @a[team=blockrace] [{selector:"@s"},{text:" 死了。",color:red}]
tellraw @s ["\n\u00a7c你死了。你已回到了起点。\n"]
playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
# gamemode spectator @s
function player:full_health
function minecraft:blockrace/startpoint