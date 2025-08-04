##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=boom] ["\n\u00a7c    当前玩家已放弃。\n"]
function minecraft:bomb/round/timeout
advancement revoke @s only bomb/giveup

