##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.green tick 0
execute as @a[team=bw.green,tag=bw.play] run scoreboard players add bw.green tick 1
scoreboard players set bw.blue tick 0
execute as @a[team=bw.blue,tag=bw.play] run scoreboard players add bw.blue tick 1
scoreboard players set bw.yellow tick 0
execute as @a[team=bw.yellow,tag=bw.play] run scoreboard players add bw.yellow tick 1
scoreboard players set bw.red tick 0
execute as @a[team=bw.red,tag=bw.play] run scoreboard players add bw.red tick 1
scoreboard players set bw.total tick 0
execute as @a[tag=bw.play] run scoreboard players add bw.total tick 1
