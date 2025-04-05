gamemode spectator @s
tellraw @s ["\n\u00a7c你淘汰了。\n"]
tellraw @a[team=play.sur] ["\u00a7b\u00a7l玩家淘汰 ＞ ",{"selector":"@s"},"\u00a7c淘汰了。"]
tellraw @a[team=play.sur.zom] ["\u00a7b\u00a7l玩家淘汰 ＞ ",{"selector":"@s"},"\u00a7c淘汰了。"]
tellraw @a[team=wait.sur] ["\u00a7b\u00a7l玩家淘汰 ＞ ",{"selector":"@s"},"\u00a7c淘汰了。"]
