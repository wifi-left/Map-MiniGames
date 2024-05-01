##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:bedwars/totalpeople

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

