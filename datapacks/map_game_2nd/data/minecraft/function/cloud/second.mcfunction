##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=sw.msg] remove sw.msg
tag @a[team=play.sw] add sw.msg
tag @a[team=wait.sw] add sw.msg
recipe give @a[team=play.sw] *

execute in airworld run spawnpoint @a[team=play.sw] 595 -43 346
execute in overworld run spawnpoint @a[team=wait.sw] 209 84 27

execute as @e[tag=sw.text.chest] at @s run function minecraft:cloud/chests/text

execute if score sw.state state matches 2..99 run function minecraft:cloud/detect/over

execute if score sw.state state matches 2..99 run function cloud/steps/seconds


