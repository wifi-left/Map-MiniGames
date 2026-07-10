tellraw @s ["\u00a7c弹夹是满的，你不需要填充弹夹。"]
execute at @s run playsound block.chest.locked player @s ~ ~ ~ 1 2 1
return 0