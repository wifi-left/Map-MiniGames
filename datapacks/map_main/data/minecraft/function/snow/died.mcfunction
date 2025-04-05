gamemode spectator @s
tellraw @s ["\u00a7c对不起，你死了。\n\u00a7a请等待下一局游戏！"]
tellraw @a[team=play.snow,gamemode=adventure] ["\u00a7f[SNOW] ",{"selector": "@s"},"\u00a77淘汰了。"]