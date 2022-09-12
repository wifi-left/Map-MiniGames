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

# Team Over

execute if score bw.green state matches 1.. unless score bw.green tick matches 1.. run function minecraft:bedwars/during/teamover/greendied
execute if score bw.blue state matches 1.. unless score bw.blue tick matches 1.. run function minecraft:bedwars/during/teamover/bluedied
execute if score bw.yellow state matches 1.. unless score bw.yellow tick matches 1.. run function minecraft:bedwars/during/teamover/yellowdied
execute if score bw.red state matches 1.. unless score bw.red tick matches 1.. run function minecraft:bedwars/during/teamover/reddied

# Win

execute if score bw.state state matches 1..5 if score bw.green tick matches 1.. unless score bw.red tick matches 1.. unless score bw.yellow tick matches 1.. unless score bw.blue tick matches 1.. run function minecraft:bedwars/during/win/green
execute if score bw.state state matches 1..5 if score bw.red tick matches 1.. unless score bw.green tick matches 1.. unless score bw.yellow tick matches 1.. unless score bw.blue tick matches 1.. run function minecraft:bedwars/during/win/red
execute if score bw.state state matches 1..5 if score bw.blue tick matches 1.. unless score bw.red tick matches 1.. unless score bw.yellow tick matches 1.. unless score bw.green tick matches 1.. run function minecraft:bedwars/during/win/blue
execute if score bw.state state matches 1..5 if score bw.yellow tick matches 1.. unless score bw.red tick matches 1.. unless score bw.green tick matches 1.. unless score bw.blue tick matches 1.. run function minecraft:bedwars/during/win/yellow

execute if score bw.state state matches 1..5 if score bw.total tick matches ..1 run function bedwars/after/over
