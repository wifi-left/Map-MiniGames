##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
advancement revoke @s only golf/cancel
tellraw @s ["§c已放弃。"]
tellraw @a[team=golf] [" > ",{selector:"@s"},{text:" 已放弃击球。",color:red}]
function minecraft:golf/gaming/nextplayer
title @s title ["\u00a7c已放弃"]
title @s subtitle ["你放弃了这一把击球"]