##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a7c你已被感染。你的目标是：感染所有玩家。"]
gamemode adventure
execute in airworld run tp @s -68 -51 9
team join play.sur.zom @s
tag @s remove sur.killedbyzom
tellraw @a[team=play.sur] ["\u00a7f\u00a7l感染 ＞ ",{"selector":"@s"},"\u00a76 被感染了。"]
tellraw @a[team=wait.sur] ["\u00a7f\u00a7l感染 ＞ ",{"selector":"@s"},"\u00a76 被感染了。"]
tellraw @a[team=play.sur.zom] ["\u00a7f\u00a7l感染 ＞ ",{"selector":"@s"},"\u00a76 被感染了。"]

