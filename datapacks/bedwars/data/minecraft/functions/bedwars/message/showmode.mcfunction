##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score bw.mode state matches 0 run data modify block -305 76 210 front_text.messages[2] set value '"\\u00a7b四队 \\u00a7d普通"'
execute if score bw.mode state matches 1 run data modify block -305 76 210 front_text.messages[2] set value '"\\u00a7b四队 \\u00a7c无床"'
execute if score bw.mode state matches 2 run data modify block -305 76 210 front_text.messages[2] set value '"\\u00a7b四队 \\u00a7e全解锁"'

execute if score bw.mode state matches 4 run data modify block -305 76 210 front_text.messages[2] set value '"\\u00a7a两队 \\u00a7d普通"'
execute if score bw.mode state matches 5 run data modify block -305 76 210 front_text.messages[2] set value '"\\u00a7a两队 \\u00a7c无床"'
execute if score bw.mode state matches 6 run data modify block -305 76 210 front_text.messages[2] set value '"\\u00a7a两队 \\u00a7e全解锁"'
