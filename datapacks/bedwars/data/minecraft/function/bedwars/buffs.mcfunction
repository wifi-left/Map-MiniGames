##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[tag=bw.speed] speed 2 0 true
execute if score bw.haste.green board matches 1 run effect give @a[team=bw.green] haste 2 0 true
execute if score bw.haste.green board matches 2 run effect give @a[team=bw.green] haste 2 1 true

execute if score bw.haste.red board matches 1 run effect give @a[team=bw.red] haste 2 0 true
execute if score bw.haste.red board matches 2 run effect give @a[team=bw.red] haste 2 1 true

execute if score bw.haste.yellow board matches 1 run effect give @a[team=bw.yellow] haste 2 0 true
execute if score bw.haste.yellow board matches 2 run effect give @a[team=bw.yellow] haste 2 1 true

execute if score bw.haste.blue board matches 1 run effect give @a[team=bw.blue] haste 2 0 true
execute if score bw.haste.blue board matches 2 run effect give @a[team=bw.blue] haste 2 1 true
