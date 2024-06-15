##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.waitreset tick 0
execute as @a[tag=bw.player] run scoreboard players add bw.waitreset tick 1
execute if score bw.waitreset tick matches ..1 run function bedwars/after/overreset
