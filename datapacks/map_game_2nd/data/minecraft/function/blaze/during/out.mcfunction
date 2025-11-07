tellraw @a[tag=blaze.player] [{"selector":"@s"},{text:" 淘汰了。",color:red}]
gamemode spectator @s
tp @s 61 50 369 0 90
tellraw @s ["\n",{text:" 对不起，你淘汰了。请等待下一局。",color:"red"},"\n"]