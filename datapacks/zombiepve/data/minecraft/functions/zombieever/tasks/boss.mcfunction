##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

data merge entity @e[tag=pve.title,limit=1] {CustomName:'"\\u00a7c魔王战争"'}
tellraw @a[team=play.zombie] ["\n\u00a7e    魔王即将降临...\n"]
schedule function zombieever/rounds/boss 60s
